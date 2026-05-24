# 8-bit ALU - Full RTL to GDS Flow

## Overview
Complete VLSI Physical Design of an 8-bit ALU using open source tools.

## Tools Used
- AMD Vivado (Simulation)
- Yosys (Synthesis)
- OpenLane + Sky130 PDK (Physical Design)
- KLayout (GDS Viewing)

## ALU Operations
| Opcode | Operation |
|--------|-----------|
| 000 | ADD |
| 001 | SUB |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT |
| 110 | Left Shift |
| 111 | Right Shift |

## Results
- Chip Area: 1136 µm²
- DRC: Passed
- LVS: Passed
- Total Cells: 127
