
# APB Slave Verification using SystemVerilog and UVM

![SystemVerilog](https://img.shields.io/badge/SystemVerilog-Verification-blue)
![UVM](https://img.shields.io/badge/UVM-Methodology-orange)
![QuestaSim](https://img.shields.io/badge/Simulator-QuestaSim-green)
![Protocol](https://img.shields.io/badge/Protocol-AMBA%20APB-purple)
![Status](https://img.shields.io/badge/Project-In%20Progress-yellow)

## Overview

This project focuses on the functional verification of an AMBA APB Slave using SystemVerilog and the Universal Verification Methodology (UVM).

The verification environment is developed around institute-provided APB Slave RTL, with emphasis on transaction generation, protocol behavior, monitoring, checking, and simulation debugging.

## Objectives

- Develop a reusable UVM-based verification environment.
- Generate APB read and write transactions.
- Verify APB setup and access phases.
- Investigate wait-state handling and reset behavior.
- Develop self-checking mechanisms using a scoreboard.
- Analyze simulation waveforms using QuestaSim.
- Extend verification using assertions and functional coverage.

## Tech Stack

| Technology | Purpose |
|---|---|
| Verilog | DUT RTL |
| SystemVerilog | Testbench development |
| UVM | Verification methodology |
| QuestaSim | Simulation and debugging |
| Synopsys Verdi | Waveform analysis |
| Git & GitHub | Version control |

## APB Protocol

The AMBA APB protocol is designed for simple, low-bandwidth peripheral communication.

An APB transfer consists of two phases:

- **Setup:** `PSEL = 1`, `PENABLE = 0`
- **Access:** `PSEL = 1`, `PENABLE = 1`

The transfer completes when `PREADY = 1`. If `PREADY` remains low, the access phase continues with wait states.

### Key Signals

| Signal | Description |
|---|---|
| `PCLK` | APB clock |
| `PRESETn` | Active-low reset |
| `PADDR` | Address bus |
| `PWDATA` | Write data |
| `PRDATA` | Read data |
| `PWRITE` | Read/write control |
| `PSEL` | Peripheral select |
| `PENABLE` | Access phase indicator |
| `PREADY` | Transfer completion indicator |
| `PSLVERR` | Transfer error indicator |

## UVM Verification Architecture

The verification environment follows a transaction-oriented UVM architecture.

- **Sequence Item:** Represents an APB transaction.
- **Sequence:** Generates transaction stimulus.
- **Sequencer:** Sends sequence items to the driver.
- **Driver:** Drives APB interface signals.
- **Monitor:** Observes DUT activity and collects transactions.
- **Agent:** Groups the driver, sequencer, and monitor.
- **Scoreboard:** Compares observed behavior against expected results.
- **Test:** Configures and executes verification scenarios.

## Verification Scenarios

| Scenario | Objective |
|---|---|
| Read Transaction | Check read transfer behavior |
| Write Transaction | Check write transfer behavior |
| Back-to-Back Transfers | Exercise consecutive transactions |
| Wait-State Handling | Check extended access phases |
| Reset During Transfer | Examine reset recovery |
| Data Pattern Testing | Exercise different data values |

*Scenario completion depends on implementation and successful simulation.*

## Repository Structure

```text
UVM-APB-SLAVE-VERIFICATION/
├── docs/       # Documentation
├── results/    # Simulation results
├── rtl/        # APB Slave RTL
├── sim/        # Simulation scripts
├── tb/         # Testbench and UVM components
├── tests/      # Verification tests
├── .gitignore
└── README.md
```

## Simulation

**Simulator:** QuestaSim

General workflow:

1. Compile the DUT and testbench.
2. Configure the required UVM test.
3. Run the simulation.
4. Inspect logs and waveforms.
5. Debug failures and validate expected behavior.

Refer to the simulation scripts and source files in this repository for the actual commands and test names.

## Future Improvements

- Add and validate SystemVerilog assertions.
- Implement functional coverage.
- Improve scoreboard checks.
- Expand corner-case and reset scenarios.
- Automate regression testing.
- Analyze coverage results and close verification gaps.

## Author

**Rahul Macha**

Electronics and Communication Engineering | Aspiring Design Verification Engineer

[![GitHub](https://img.shields.io/badge/GitHub-rahulmacha08-181717?style=for-the-badge&logo=github)](https://github.com/rahulmacha08)

---

**Note:** The APB Slave RTL is institute-provided. This repository documents the verification work and learning outcomes within the scope implemented by the author.
