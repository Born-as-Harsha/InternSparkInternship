# LVS and DRC Verification Report

## Objective

Understand physical verification techniques used in ASIC and FPGA design flows.

---

## Design Rule Check (DRC)

### Purpose

DRC verifies whether the physical layout follows manufacturing rules.

### Typical Checks

* Minimum spacing
* Minimum width
* Overlap violations
* Metal enclosure violations
* Via spacing violations

### Expected Result

No DRC violations detected.

---

## Layout Versus Schematic (LVS)

### Purpose

LVS compares the physical layout netlist against the schematic netlist.

### Verification Items

* Connectivity matching
* Device matching
* Pin matching
* Net matching

### Expected Result

Layout and schematic are equivalent.

---

## Test Coverage

Test coverage measures how effectively faults can be detected.

Coverage = (Detected Faults / Total Faults) × 100

Typical scan-based designs achieve high fault coverage.

---

## Stuck-at Fault Analysis

### Stuck-at-0

Signal permanently fixed at logic 0.

### Stuck-at-1

Signal permanently fixed at logic 1.

Scan testing helps identify both fault types.

---

## Conclusion

DRC ensures manufacturability while LVS ensures functional equivalence between layout and schematic. Combined with DFT techniques, these checks improve design quality and testability.
