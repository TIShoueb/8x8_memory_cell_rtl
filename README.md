# 8×8 (64-bit) Memory Unit — RTL + SPICE (GPDK 90nm)

This repository contains my course project implementation of a small **8×8 memory array (64-bit)** designed for an IoT-sensor style use case. The work covers **RTL design + simulation** of the full memory hierarchy and **SPICE-level characterization** of the bitcell across process corners/temperature (GPDK 90nm).

## What I built
The memory is organized as **8 words × 8 bits**. A **3-to-8 decoder** selects one word, a small **control/FSM** manages read/write sequencing, and the storage is built from a latch-based **1-bit cell** with a tri-state readout so only the selected cell drives the read bus.

## What you can see in this repo
- **RTL design (Verilog):** integrated hierarchy from bitcell → word → array, plus decoder and FSM.
- **RTL verification:** a testbench that writes/reads patterns and checks correct word selection and data readback.
- **SPICE bitcell simulations:** netlists and result plots (corners/temperature sweeps).
- **Schematics (KiCad):** used for visualization of hierarchy and connectivity.
- **Report:** includes architecture description, test strategy, and measured results.

## Repository structure
- `rtl/src/` — Verilog RTL (memory array, decoder, FSM, bitcell/word hierarchy)
- `rtl/tb/` — testbench (e.g., `tb_memory.v`)
- `spice/` — SPICE netlists and outputs
- `spice/results/` — plots/screenshots (SPICE + selected waveform screenshots)
- `kicad/` — KiCad schematic/layout files (visualization)
- `docs/` — report PDF(s)

## How to run (RTL)
1. Open `rtl/src/` and `rtl/tb/` in your HDL simulator (Active-HDL / Questa / ModelSim).
2. Compile the RTL + testbench and run the simulation.
3. Observe write/read operations across addresses and verify the output data matches the written values.

> Note: simulator project files/workspaces are intentionally not included to keep the repo clean and tool-agnostic.

## SPICE note (models)
The SPICE netlists assume access to **GPDK 90nm model files**. The model files themselves are not included in this repository. If the netlist uses an absolute include path, replace it with your local model include path. See `spice/README.md`.

## Results (high level)
Key results and plots are available in the report under `docs/` and in `spice/results/` (leakage vs corner and read/write timing behavior).

## Keywords
Verilog RTL, memory array, decoder, FSM, latch-based bitcell, SPICE (GPDK 90nm), PVT corners, KiCad.
