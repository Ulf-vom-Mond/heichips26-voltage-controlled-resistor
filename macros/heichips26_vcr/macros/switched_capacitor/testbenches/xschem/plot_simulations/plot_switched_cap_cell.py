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

    # ------------------------------------------------------------------
    # 4. Load ngspice simulation data
    # ------------------------------------------------------------------
    ngspice_file = data_dir / "tb_switched_cap_tran.txt"

    time = ng.loadngspicecol(str(ngspice_file), "time")
    vr = ng.loadngspicecol(str(ngspice_file), "v(vr)")
    vdd = ng.loadngspicecol(str(ngspice_file), "v(VDD)")
    ir1 = ng.loadngspicecol(str(ngspice_file), "i(r1)")

    # ------------------------------------------------------------------
    # 5. Plot
    # ------------------------------------------------------------------

    fig, ax1 = plt.subplots(figsize=(10, 6.5))

    ax1.plot(time, ir1, linewidth=1.5)

    ax1.set_xlabel(r'$t$ in s')
    ax1.set_xlim(np.min(time), np.max(time))
    ax1.set_ylabel(r'$i_\mathrm{R}$ in A')
    #ax1.set_ylim(0, 1.5)
    #ax1.set_yticks(np.arange(0, 1.5, 0.25))
    ax1.grid(visible=True, which='major', linestyle='-', alpha=0.45)

    #ax1.legend(h1 + h2, l1 + l2, loc='center left')
    plt.tight_layout()

    # ------------------------------------------------------------------
    # 5.5 Print statisitics
    # ------------------------------------------------------------------
    print(f"Average current: {np.mean(ir1)}")

    # ------------------------------------------------------------------
    # 6. Export figure
    # ------------------------------------------------------------------
    fig.savefig(str(figures_dir / "tb_switched_cap_tran.pdf"), bbox_inches='tight')

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