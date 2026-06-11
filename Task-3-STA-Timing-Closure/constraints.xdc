## Clock Constraint
create_clock -period 20.000 -name clk [get_ports clk]

## Input Delays
set_input_delay -clock clk 2.0 [get_ports a[*]]
set_input_delay -clock clk 2.0 [get_ports b[*]]
set_input_delay -clock clk 2.0 [get_ports c[*]]
set_input_delay -clock clk 2.0 [get_ports rst]

## Output Delays
set_output_delay -clock clk 2.0 [get_ports result[*]]

## Clock Uncertainty
set_clock_uncertainty 0.2 [get_clocks clk]