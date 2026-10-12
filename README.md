# Heichips 2026 Voltage Controlled Resistor

Three different fully analog designs for VCRs (voltage controlled resistors) were implemented using the [IHP SG13CMOS5L](https://github.com/IHP-GmbH/IHP-Open-PDK) process. Further information about the repository structure can be found at [the Heichips26 template repository](https://github.com/HeiChips/heichips26-template).

A VCR acts like an ohmic resistor whose value can be changed by applying a control voltage to a third terminal. Typical applications include other voltage controlled components like filters, oscillators and programmable gain amplifiers. The VCR should be:
 - bidirectional (two quadrant operation)
 - floating (none of the two resistor terminals is tied to a fixed voltage)
 - linear (with respect to common mode, differential mode and the control voltage)
 - continous in its value
 - able to show a whole decade of different resistance values

For the three different implementations, we chose:
 - an approach according to H. Yadav et al.: https://www.sciencedirect.com/science/article/pii/S1434841125000317
 - a bisection approach: https://ieeexplore.ieee.org/document/982971
 - a switched capacitor approach

All three designs can be connected to the analog I/O pins via independent analog switches, controlled by the eFPGA. The digital interface to the eFPGA is as follows:

| type   | pin        | function |
|--------|------------|----------|
| input  | uio_in[7]  | switched capacitor VCR: MUX input A |
| input  | uio_in[6]  | switched capacitor VCR: MUX input B |
| input  | uio_in[5]  | select switched capacitor VCR |
| input  | uio_in[4]  | switched capacitor VCR: clock input |
| input  | ui_in[6]   | bisection VCR: bias current b4 |
| input  | ui_in[5]   | bisection VCR: bias current b3 |
| input  | ui_in[4]   | bisection VCR: bias current b2 |
| input  | ui_in[3]   | bisection VCR: bias current b1 |
| input  | ui_in[2]   | bisection VCR: bias current b0 |
| input  | ui_in[1]   | select bisection VCR |
| input  | ui_in[0]   | select Yadav VCR |
| output | uio_out[4] | switched capacitor VCR: clock output |

## Switched Capacitor VCR

The top-level schematic can be found in `macros/heichips26_vcr/macros/switched_capacitor/schematic/xschem/switched_cap_cell.sch`.

A pdf plot of all relevant schematics is found at `macros/heichips26_vcr/macros/switched_capacitor/final/render/xschem_plot.pdf`.

### Principle of Operation

A capacitor is connected in a T-style circuit with the two virtual resistor terminals via two analog switches (aka transmission gates). During operation, both switches are closed in an alternating pattern. Both switches are never closed simultaneously. This way, the capacitor will be connected either between terminal A and ground or between terminal B and ground. When one of the switches closes, the capacitor will be charged to the voltage applied to the respective terminal. With the capacitance $C$ and the voltages on the terminals $V_A$ and $V_B$, the transferred charge on each cycle $Q$ can be calculated:

$$
Q = (V_A - V_B) \cdot C
$$

The switches are operated at the frequency $f$, so the charge $Q$ is transferred every $t = 1/f$ seconds. As the current $I$ is defined as the transferred charge per time interval, it can be calculated:

$$
I = \frac{Q}{t} = (V_A - V_B) \cdot C \cdot f
$$

According to Ohm's law, the resistance $R$ is defined as voltage divided by current. Rearranging the above equation accordingly gives:

$$
R = \frac{V_A - V_B}{I} = \frac{1}{C \cdot f}
$$

In conclusion, the emulated resistance between the terminals A and B can be varied by varying the frequency that drives the analog switches.

### Oscillators

To generate the clock signal for the analog switches, four clock sources are available, selectable through a multiplexer.

| uio_in[7] | uio_in[6] | clock source |
|-----------|-----------|--------------|
|         0 |         0 | eFPGA |
|         0 |         1 | Voltage Controlled Oscillator (VCO) |
|         1 |         0 | Current Controlled Oscillator (OSC) |
|         1 |         1 | external |

#### eFPGA

An output of the eFPGA integrated in the Heichips chip is routed to the clock multiplexer. This could be useful in applications where the resistance should be digitally controlled.

#### VCO

(`macros/heichips26_vcr/macros/switched_capacitor/schematic/xschem/vco.sch`)

This oscillator works by charging and discharging a capacitor with a constant reference current. Two analog comparators switch between charging and discharging when the triangular capacitor voltage crosses an upper or a lower threshold voltage. The triangular voltage waveform has a constant slope given by the capacitor value and the reference current, so the oscillator frequency can be adjusted by changing the difference between the upper and the lower threshold voltage. See the differential equation of a capacitor for reference:

$$
i = C \cdot \frac{dv}{dt}
$$

Assuming a constant $dv/dt = \Delta v/\Delta t$ and rearranging for $1/\Delta t$:

$$
\frac{1}{\Delta t} = \frac{i}{C \cdot \Delta v}
$$

So the frequency ($f = 1/t$) is inversely proportional to the difference between the threshold voltages. Because the VCR resistance is also inversely proportional to the frequency, a direct proportionality between resistance and control voltage arises.

The following values are obtained from the simulation:

| $V_{ctrl}$ | $f_{VCO}$ |
|------------|-----------|
| 0 V | 12.3 MHz |
| 3.3 V | 875 kHz |

#### OSC

(`macros/heichips26_vcr/macros/switched_capacitor/schematic/xschem/osc.sch`)

This oscillator was inspired by the classic astable multivibrator circuit constructed from two bipolar junction transistors. Some adaptions are necessary when using MOS devices for the implementation. The idea reverses the principle of the VCO from above: two capacitors are charged and discharged with constant threshold voltages, but with a variable current. According to the capacitor equations above, a direct proportionality exists between the frequency and the current which gives an indirect proportionality between the resistance and the current. This might be useful because of the logarithm-like behaviour of the $1/x$ function which gives a fine resistance resolution at low frequency values and a large resistance range at high frequency values. However, those non-linearities are usually unfavorable. For those applications, the VCO might be more suitable.

In theory, this oscillator is current-controlled, however, due to the large resistance of the input source-drain channel, an implicit voltage to current conversion happens.

The following values are obtained from the simulation:

| $V_{ctrl}$ | $I_{ctrl}$ | $f_{OSC}$ |
|------------|------------|-----------|
| 0 V | 440 µA | 193 MHz |
| 2.02 V | 30 µA | 13.9 MHz |
| 2.5 V | 1 µA | 1.41 MHz |

This makes this oscillator considerably faster than the VCO. For higher control currents, even higher oscillation frequencies can be simulated.

#### External

The analog input pin usually used for the control voltage can be used directly as the clock source which gives the possibility to implement an external oscillator.

### Oscillator Output

The output of the clock MUX is routed back to the eFPGA. This gives the possibility to verify and monitor the different oscillators directly. In theory, this could be used to make a very bad ADC.
