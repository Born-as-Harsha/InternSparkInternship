# Static Timing Analysis (STA) & Timing Closure Report

## Objective

Perform Static Timing Analysis (STA) on the synthesized design and achieve timing closure.

## Design Information

* Design Name: STA_Timing
* Tool Used: Vivado 2025.2
* Device: xc7a100tcsg324-1

## Timing Constraints

* Clock Period: 20 ns
* Clock Frequency: 50 MHz

## Timing Analysis Results

### Setup Analysis

* Worst Negative Slack (WNS): 7.600 ns
* Total Negative Slack (TNS): 0.000 ns
* Failing Endpoints: 0

### Hold Analysis

* Worst Hold Slack (WHS): 0.059 ns
* Total Hold Slack (THS): 0.000 ns
* Failing Endpoints: 0

### Pulse Width Analysis

* Worst Pulse Width Slack (WPWS): 9.500 ns
* Total Pulse Width Negative Slack (TPWS): 0.000 ns

## Timing Closure

All user-specified timing constraints are met.

No setup violations were found.

No hold violations were found.

The design successfully achieved timing closure after optimization.

## Conclusion

The Static Timing Analysis was successfully performed. The design meets all timing requirements with positive setup and hold slack values.
