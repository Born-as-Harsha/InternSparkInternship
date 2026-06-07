\# Task 2 - Synthesis and Gate-Level Simulation



\## Objective



Perform RTL synthesis to generate a gate-level netlist and verify equivalence using gate-level simulation.



\## Tool Used



\* Xilinx Vivado

\* Verilog HDL



\## Files Included



\* `Gate\_Level\_Task.v` → RTL Design File

\* `adder\_tb.v` → Testbench

\* `adder\_netlist.v` → Synthesized Gate-Level Netlist

\* `Device.png` → Synthesized Device View

\* `TCL-console.png` → TCL Execution Logs

\* `waveform-1.png`

\* `waveform-2.png`

\* `waveform-3.png`



\## Flow Followed



1\. RTL Design Creation

2\. Behavioral Simulation

3\. RTL Synthesis

4\. Netlist Generation

5\. Gate-Level Simulation

6\. Output Verification



\## Verification Results



| Input A | Input B | Expected Output | Gate-Level Output | Status |

| ------- | ------- | --------------- | ----------------- | ------ |

| 2       | 3       | 5               | 5                 | PASS   |

| 4       | 5       | 9               | 9                 | PASS   |

| 15      | 1       | 16              | 16                | PASS   |



\## Conclusion



The synthesized gate-level netlist behavior matches RTL simulation results, confirming functional equivalence.



