# -*- coding: utf-8 -*-
# SPDX-FileCopyrightText: 2026 The HeiChips Contributors
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
# Author: Simon Dorrer
# Description: AC and DC plots for the inverter macro based on ngspice exports.
# Created: 06.05.2026
# Last Modified: 06.05.2026
# ============================================

# Imports
import os
import numpy as np
import matplotlib.pyplot as plt
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

# Pure Matplotlib text rendering (no external LaTeX dependency)
plt.rcParams.update({
    "text.usetex": False,
    "mathtext.fontset": "cm",
    "font.family": "serif",
    "font.size": 14,
})
# =========================================================================

def main():
    # Resolve data and output paths relative to this script
    script_dir = Path(__file__).resolve().parent
    data_dir = script_dir / "data"
    figures_dir = script_dir / "figures"
    figures_dir.mkdir(parents=True, exist_ok=True)

    ngspice_file = data_dir / "res_tb_linearity.txt"

    vsweep = ng.loadngspicecol(str(ngspice_file), "v-sweep")
    vsweep = vsweep[0::2]

    N_SWEEP = 5
    VDD = 1.5
    res = {}
    for i in range(1, N_SWEEP+1):
        vc = (i-1)*VDD/N_SWEEP
        tmp = ng.loadngspicecol(str(ngspice_file), f"dc{i}.v(vsweep)/dc{i}.i(Vmeas)")
        res[vc] = tmp[0::2]

    fig1, axs = plt.subplots(1, squeeze=False)
    fig1.suptitle('VCS - Linearity')

    # Magnitude
    for key, val in res.items():
        axs[0,0].plot(vsweep, val, label=f"{key:.2f}V",)
        axs[0,0].set_xlabel('Voltage accross resistor (V)')
        axs[0,0].set_ylabel(r'Resistance ($\Omega$)')
        #axs.set_ylim(-20, 40)

    axs[0,0].grid(visible=True) #, which='both', linestyle='--', alpha=0.5)
    axs[0,0].legend()
    # ------------------------------------------------------------------
    # 6. Export DC figures and CSV
    # ------------------------------------------------------------------
    fig1.tight_layout()
    fig1.savefig(str(figures_dir / "res_linearity.pdf"), bbox_inches='tight')

    # ------------------------------------------------------------------
    # 7. Open the plot windows (blocks until they are closed)
    # ------------------------------------------------------------------
    # Only open the interactive window when requested (sim-view-xschem sets
    # SHOW_PLOTS=1); batch/headless runs just save the figures and exit.
    if os.environ.get("SHOW_PLOTS"):
        plt.show()
    # =========================================================================

# Main Execution
if __name__ == '__main__':
    main()
# =========================================================================
