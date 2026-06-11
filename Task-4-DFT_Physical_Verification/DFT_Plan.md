# Design For Testability (DFT) Plan

## Objective

Improve chip testability by introducing scan chain architecture.

## Scan Chain Concept

A scan chain connects flip-flops serially to improve observability and controllability of internal nodes.

### Scan Signals

* scan_en : Enables scan mode
* scan_in : Serial test data input
* scan_out : Serial test data output

## Operation

### Functional Mode

scan_en = 0

The flip-flop captures normal functional data.

### Scan Mode

scan_en = 1

The flip-flop captures serial test data from scan_in and shifts it through the scan chain.

## Benefits

* Improved fault coverage
* Easier manufacturing testing
* Better controllability of internal registers
* Better observability of internal states

## Fault Models

### Stuck-at-0 Fault

A signal permanently remains logic 0.

### Stuck-at-1 Fault

A signal permanently remains logic 1.

## Expected Test Coverage

For small scan-based designs, fault coverage can typically exceed 95%.

## Conclusion

The scan chain methodology improves testability and helps detect manufacturing defects efficiently.
