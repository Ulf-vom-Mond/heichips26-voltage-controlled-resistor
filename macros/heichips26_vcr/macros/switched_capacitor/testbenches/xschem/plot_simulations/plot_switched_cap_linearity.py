# Imports
import os
import random
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import AutoMinorLocator
import ngspice2python as ng
from pathlib import Path
# ============================================

# Plotting Configuration
# ============================================
# Interactive mode stays off: the plt.show() at the end of main() then blocks in the GUI
# event loop, which is what draws the windows in the first place. With plt.ion() the call
# returns immediately and nothing pumps that loop afterwards, so no window ever appears.
plt.close("all")

# Matplotlib Settings
# %matplotlib qt
# %matplotlib inline

grid_width = 0.5
grid_color = "0.85"
minor_grid_width = 0.2
minor_grid_color = "0.92"

# Pure Matplotlib text rendering (no external LaTeX dependency)
plt.rcParams.update({
    "text.usetex": True,
    "font.family": "serif",
    "figure.dpi": 600
})
# =========================================================================

def plot_vcm_sweep(datafile, plotfolder):
    ngspice_file = datafile

    time = ng.loadngspicecol(str(ngspice_file), "time")
    i0   = ng.loadngspicecol(str(ngspice_file), "i(i0)")
    i1   = ng.loadngspicecol(str(ngspice_file), "i(v1)")
    vr1  = ng.loadngspicecol(str(ngspice_file), "vr1")
    vr2  = ng.loadngspicecol(str(ngspice_file), "vr2")

    vdm = vr2 - vr1
    vcm = (vr2 + vr1) / 2

    tran_dict = {}
    section_start = 0
    for i in range(1, len(time)):
        if vcm[i-1] != vcm[i] or i0[i-1] != i0[i] or i == len(time)-1:
            if i == len(time)-1: # collect last section
                i+=1

            tran_dict[f"{i0[i-1]}_{vcm[i-1]}"] = {
                "i0": i0[i-1],
                "vcm": vcm[i-1],
                "vdm": vdm[i-1],
                "t": time[section_start:i],
                "i1": i1[section_start:i]
            }
            section_start = i

    r_dict = {}
    filter_len = 20

    for opp in tran_dict:
        opp_t = tran_dict[opp]["t"]
        opp_i0 = tran_dict[opp]["i0"]
        opp_i1 = tran_dict[opp]["i1"]
        opp_vdm = tran_dict[opp]["vdm"]
        opp_vcm = tran_dict[opp]["vcm"]

        sample_period = opp_t[filter_len:] - opp_t[0:-filter_len]
        thr = (np.max(sample_period) + np.min(sample_period)) / 2
        rising_edge_time_log = []
        rising_edge_index_log = []

        for i in range(1, len(sample_period)):
            if sample_period[i-1] < thr and sample_period[i] > thr:
                rising_edge_time_log.append(opp_t[i + int(filter_len/2)])
                rising_edge_index_log.append(i + int(filter_len/2))

        #period = 2 * (rising_edge_time_log[-1] - rising_edge_time_log[0]) / (len(rising_edge_time_log) - 1)
        #f = 1 / period
        #print(f/1e6)

        avg_end = rising_edge_index_log[-1] - rising_edge_index_log[0]
        i_avg = np.trapz(opp_i1[0:avg_end], opp_t[0:avg_end]) / opp_t[avg_end]
        r_avg = opp_vdm/i_avg

        if opp_i0 not in r_dict:
            r_dict[opp_i0] = {
                "data": []
            }

        r_dict[opp_i0]["data"].append((opp_vcm, r_avg))

    fig, ax1 = plt.subplots(figsize=(6.5, 3.8))
    for i0_val in r_dict:
        r_dict[i0_val]["data"] = sorted(r_dict[i0_val]["data"], key=lambda entry: entry[0]) # sort based on vcm values
        r_dict[i0_val]["vcm"] = [entry[0] for entry in r_dict[i0_val]["data"]]
        r_dict[i0_val]["r_avg"] = [entry[1] for entry in r_dict[i0_val]["data"]]
        r_avg_avg = np.mean(r_dict[i0_val]["r_avg"])
        
        labeltext = fr"$I_\mathrm{{ctrl}} = {round(i0_val*1e6, 1)}$ µA, $R_\mathrm{{mean}} = {round(r_avg_avg/1e3, 1)}$ k$\Omega$"
        ax1.plot(r_dict[i0_val]["vcm"], 100*(r_dict[i0_val]["r_avg"]/r_avg_avg-1), linewidth=1, label=labeltext)

    ax1.set_xlabel(r"$V_\mathrm{CM}$ in V")
    ax1.set_ylabel(r"relative deviation from mean resistance in \%")

    ax1.set_xlim(min(vcm), max(vcm))

    ax1.yaxis.set_minor_locator(AutoMinorLocator())
    ax1.xaxis.set_minor_locator(AutoMinorLocator())
    ax1.grid(axis="both", which="major", color=grid_color, linewidth=grid_width)
    ax1.grid(axis="both", which="minor", color=minor_grid_color, linewidth=minor_grid_width)

    ax1.legend()
    fig.suptitle(rf"Linearity with respect to $V_\mathrm{{CM}}$ for $V_\mathrm{{DM}} = {vdm[0]}$ V")
    plt.tight_layout()
    plt.savefig(plotfolder / "linearity_vcm.pdf")
    plt.savefig(plotfolder / "linearity_vcm.png")
    #plt.show()


def plot_vdm_sweep(datafile, plotfolder):
    ngspice_file = datafile

    time = ng.loadngspicecol(str(ngspice_file), "time")
    i0   = ng.loadngspicecol(str(ngspice_file), "i(i0)")
    i1   = ng.loadngspicecol(str(ngspice_file), "i(v1)")
    vr1  = ng.loadngspicecol(str(ngspice_file), "vr1")
    vr2  = ng.loadngspicecol(str(ngspice_file), "vr2")

    vdm = vr2 - vr1
    vcm = (vr2 + vr1) / 2

    tran_dict = {}
    section_start = 0
    for i in range(1, len(time)):
        if vdm[i-1] != vdm[i] or i0[i-1] != i0[i] or i == len(time)-1:
            if i == len(time)-1: # collect last section
                i+=1

            tran_dict[f"{i0[i-1]}_{vdm[i-1]}"] = {
                "i0": i0[i-1],
                "vcm": vcm[i-1],
                "vdm": vdm[i-1],
                "t": time[section_start:i],
                "i1": i1[section_start:i]
            }
            section_start = i

    r_dict = {}
    filter_len = 20

    for opp in tran_dict:
        opp_t = tran_dict[opp]["t"]
        opp_i0 = tran_dict[opp]["i0"]
        opp_i1 = tran_dict[opp]["i1"]
        opp_vdm = tran_dict[opp]["vdm"]
        opp_vcm = tran_dict[opp]["vcm"]

        sample_period = opp_t[filter_len:] - opp_t[0:-filter_len]
        thr = (np.max(sample_period) + np.min(sample_period)) / 2
        rising_edge_time_log = []
        rising_edge_index_log = []

        for i in range(1, len(sample_period)):
            if sample_period[i-1] < thr and sample_period[i] > thr:
                rising_edge_time_log.append(opp_t[i + int(filter_len/2)])
                rising_edge_index_log.append(i + int(filter_len/2))

        #period = 2 * (rising_edge_time_log[-1] - rising_edge_time_log[0]) / (len(rising_edge_time_log) - 1)
        #f = 1 / period
        #print(f/1e6)

        avg_end = rising_edge_index_log[-1] - rising_edge_index_log[0]
        i_avg = np.trapz(opp_i1[0:avg_end], opp_t[0:avg_end]) / opp_t[avg_end]
        r_avg = opp_vdm/i_avg

        if opp_i0 not in r_dict:
            r_dict[opp_i0] = {
                "data": []
            }

        r_dict[opp_i0]["data"].append((opp_vdm, r_avg))

    fig, ax1 = plt.subplots(figsize=(6.5, 3.8))
    for i0_val in r_dict:
        r_dict[i0_val]["data"] = sorted(r_dict[i0_val]["data"], key=lambda entry: entry[0]) # sort based on vcm values
        r_dict[i0_val]["vdm"] = [entry[0] for entry in r_dict[i0_val]["data"]]
        r_dict[i0_val]["r_avg"] = [entry[1] for entry in r_dict[i0_val]["data"]]
        r_avg_avg = np.mean(r_dict[i0_val]["r_avg"])
        
        labeltext = fr"$I_\mathrm{{ctrl}} = {round(i0_val*1e6, 1)}$ µA, $R_\mathrm{{mean}} = {round(r_avg_avg/1e3, 1)}$ k$\Omega$"
        ax1.plot(r_dict[i0_val]["vdm"], 100*(r_dict[i0_val]["r_avg"]/r_avg_avg-1), linewidth=1, label=labeltext)

    ax1.set_xlabel(r"$V_\mathrm{DM}$ in V")
    ax1.set_ylabel(r"relative deviation from mean resistance in \%")

    ax1.set_xlim(min(vdm), max(vdm))

    ax1.yaxis.set_minor_locator(AutoMinorLocator())
    ax1.xaxis.set_minor_locator(AutoMinorLocator())
    ax1.grid(axis="both", which="major", color=grid_color, linewidth=grid_width)
    ax1.grid(axis="both", which="minor", color=minor_grid_color, linewidth=minor_grid_width)

    ax1.legend()
    fig.suptitle(rf"Linearity with respect to $V_\mathrm{{DM}}$ for $V_\mathrm{{CM}} = {vcm[0]}$ V")
    plt.tight_layout()
    plt.savefig(plotfolder / "linearity_vdm.pdf")
    plt.savefig(plotfolder / "linearity_vdm.png")

    ax1.set_ylim(bottom=-20, top=20)
    plt.savefig(plotfolder / "linearity_vdm_detailed.pdf")
    plt.savefig(plotfolder / "linearity_vdm_detailed.png")
    #plt.show()


def plot_ictrl_sweep(datafile, plotfolder):
    ngspice_file = datafile

    time = ng.loadngspicecol(str(ngspice_file), "time")
    i0   = ng.loadngspicecol(str(ngspice_file), "i(i0)") * 1e6 # micro amps
    i1   = ng.loadngspicecol(str(ngspice_file), "i(v1)")
    vr1  = ng.loadngspicecol(str(ngspice_file), "vr1")
    vr2  = ng.loadngspicecol(str(ngspice_file), "vr2")

    vdm = vr2 - vr1
    vcm = (vr2 + vr1) / 2

    tran_dict = {}
    section_start = 0
    for i in range(1, len(time)):
        if i0[i-1] != i0[i] or i == len(time)-1:
            if i == len(time)-1: # collect last section
                i+=1

            tran_dict[f"{i0[i-1]}"] = {
                "i0": i0[i-1],
                "vcm": vcm[i-1],
                "vdm": vdm[i-1],
                "t": time[section_start:i],
                "i1": i1[section_start:i]
            }
            section_start = i

    r_dict = {}
    filter_len = 20

    for opp in tran_dict:
        opp_t = tran_dict[opp]["t"]
        opp_i0 = tran_dict[opp]["i0"]
        opp_i1 = tran_dict[opp]["i1"]
        opp_vdm = tran_dict[opp]["vdm"]
        opp_vcm = tran_dict[opp]["vcm"]

        sample_period = opp_t[filter_len:] - opp_t[0:-filter_len]
        thr = (np.max(sample_period) + np.min(sample_period)) / 2
        rising_edge_time_log = []
        rising_edge_index_log = []

        for i in range(1, len(sample_period)):
            if sample_period[i-1] < thr and sample_period[i] > thr:
                rising_edge_time_log.append(opp_t[i + int(filter_len/2)])
                rising_edge_index_log.append(i + int(filter_len/2))

        #period = 2 * (rising_edge_time_log[-1] - rising_edge_time_log[0]) / (len(rising_edge_time_log) - 1)
        #f = 1 / period
        #print(f/1e6)

        # print(len(rising_edge_index_log))
        # fig, ax1 = plt.subplots(figsize=(6.5, 3.8))
        # ax1.plot(opp_t, opp_i1)
        # plt.show()
        # break

        avg_end = rising_edge_index_log[-1] - rising_edge_index_log[0]
        i_avg = np.trapz(opp_i1[0:avg_end], opp_t[0:avg_end]) / opp_t[avg_end]
        r_avg = opp_vdm/i_avg

        r_dict_key = f"{opp_vcm}_{opp_vdm}"
        if r_dict_key not in r_dict:
            r_dict[r_dict_key] = {
                "vdm": opp_vdm,
                "vcm": opp_vcm,
                "data": []
            }

        r_dict[r_dict_key]["data"].append((opp_i0, r_avg))

    fig1, ax1 = plt.subplots(figsize=(6.5, 3.8))
    fig2, ax2 = plt.subplots(figsize=(6.5, 3.8))
    for key in r_dict:
        r_dict[key]["data"] = sorted(r_dict[key]["data"], key=lambda entry: entry[0]) # sort based on vcm values
        r_dict[key]["i0"] = [entry[0] for entry in r_dict[key]["data"]]
        r_dict[key]["r_avg"] = [entry[1]/1e3 for entry in r_dict[key]["data"]]
        r_avg_avg = np.mean(r_dict[key]["r_avg"])
        
        labeltext = fr"$V_\mathrm{{CM}} = {round(r_dict[key]["vcm"], 2)}$ V, $V_\mathrm{{DM}} = {round(r_dict[key]["vdm"], 2)}$ V"
        ax1.plot(r_dict[key]["i0"], r_dict[key]["r_avg"], linewidth=1, label=labeltext)
        ax2.loglog(1/np.array(r_dict[key]["i0"]), r_dict[key]["r_avg"], linewidth=1, label=labeltext)

    ax1.set_xlabel(r"$I_\mathrm{ctrl}$ in µA")
    ax1.set_ylabel(r"$R$ in k$\Omega$")

    #ax1.set_xlim(min(i0), max(i0))

    ax1.yaxis.set_minor_locator(AutoMinorLocator())
    ax1.xaxis.set_minor_locator(AutoMinorLocator())
    ax1.grid(axis="both", which="major", color=grid_color, linewidth=grid_width)
    ax1.grid(axis="both", which="minor", color=minor_grid_color, linewidth=minor_grid_width)

    ax1.legend()
    fig1.suptitle(rf"Linearity with respect to $I_\mathrm{{ctrl}}$")
    fig1.tight_layout()
    fig1.savefig(plotfolder / "linearity_ictrl.pdf")
    fig1.savefig(plotfolder / "linearity_ictrl.png")

    ax2.set_xlabel(r"$1/I_\mathrm{ctrl}$ in µA$^{-1}$")
    ax2.set_ylabel(r"$R$ in k$\Omega$")

    ax2.set_xlim(min(1/i0), max(1/i0))

    #ax2.yaxis.set_minor_locator(AutoMinorLocator())
    #ax2.xaxis.set_minor_locator(AutoMinorLocator())
    ax2.grid(axis="both", which="major", color=grid_color, linewidth=grid_width)
    ax2.grid(axis="both", which="minor", color=minor_grid_color, linewidth=minor_grid_width)

    ax2.legend()
    fig2.suptitle(rf"Linearity with respect to $\frac{{1}}{{I_\mathrm{{ctrl}}}}$")
    fig2.tight_layout()
    fig2.savefig(plotfolder / "linearity_ictrl-1.pdf")
    fig2.savefig(plotfolder / "linearity_ictrl-1.png")
    #plt.show()


def main():
    # Resolve data and output paths relative to this script
    script_dir = Path(__file__).resolve().parent
    data_dir = script_dir / "data"
    figures_dir = script_dir / "figures"
    figures_dir.mkdir(parents=True, exist_ok=True)

    plot_vcm_sweep(data_dir / "tb_switched_cap_tran_sweep_vcm.txt", figures_dir)
    plot_vdm_sweep(data_dir / "tb_switched_cap_tran_sweep_vdm.txt", figures_dir)
    plot_ictrl_sweep(data_dir / "tb_switched_cap_tran_sweep_ictrl.txt", figures_dir)


    # Main Execution
if __name__ == '__main__':
    main()
# =========================================================================