# Task 1: RTL Design & Functional Simulation (Verilog)

## Objective

Design and verify an 8-bit ALU using Verilog HDL and validate functionality using directed and random test cases.

## Project Description

This project implements an 8-bit Arithmetic Logic Unit (ALU) supporting arithmetic, logical, and shift operations. Functional verification was performed using simulation waveforms in Xilinx Vivado.

## Operations Implemented

| Opcode | Operation   |
| ------ | ----------- |
| 000    | Addition    |
| 001    | Subtraction |
| 010    | AND         |
| 011    | OR          |
| 100    | XOR         |
| 101    | NOT         |
| 110    | Left Shift  |
| 111    | Right Shift |

## Files Included

* `alu_8_bit.v` → RTL implementation
* `tb_alu8.v` → Testbench
* `waveform_directed.png` → Directed verification
* `waveform_random.png` → Random verification
* `coverage_explanation.txt` → Coverage details
* `alu_schematic.jpg` → Generated schematic

## Verification

Directed testing verified all opcodes from 000–111.

Random testing was performed using multiple random input combinations for broader functional validation.

## Tools Used

* Xilinx Vivado
* Verilog HDL
* Vivado Simulator

## Result

Simulation results confirmed correct arithmetic, logical, and shift operations.
