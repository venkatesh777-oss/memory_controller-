

# 💾 Memory Controller using Verilog HDL

## 📘 Project Overview

This project demonstrates a simple **Memory Controller** designed in **Verilog HDL**.
It performs **read** and **write** operations on an internal memory block using control signals.
The controller provides a **ready** signal to indicate when an operation is completed and includes a **reset** feature to initialize outputs.



## ⚙️ Features

* Performs **read** and **write** operations on 8-bit data.
* Uses **8-bit address** and **8-bit data lines**.
* Includes a **ready** signal for operation acknowledgment.
* **Reset** initializes data output and status.
* Simple and beginner-friendly Verilog design for simulation and FPGA learning.


## 🧩 Modules

1. **memory_controller.v** – Verilog module that handles memory read and write operations.
2. **memory_tb.v** – Testbench used to verify memory functionality with sample data.



## 🧪 Working Principle

* When **reset** is active, `data_out` and `ready` are cleared.
* When **write_en** is high, the controller writes `data_in` to the memory location specified by `addr`.
* When **read_en** is high, it reads data from the given address and sends it to `data_out`.
* The **ready** signal goes high after each read or write operation, indicating successful execution.



## 🧰 Tools Used

* **Verilog HDL** for design and verification
* **ModelSim / Vivado / GTKWave** for simulation and waveform analysis
* Optional FPGA synthesis using **Vivado** or **Quartus**



## 🎯 Output

* Successful **data write** and **data read** operations verified through simulation.
* `data_out` displays stored values correctly during read cycles.
* `ready` signal pulses high after every valid operation.
* Waveforms confirm proper memory behavior and timing.


## 👨‍💻 Author

Venkatesh Damera

Electronics & Communication Engineer | VLSI & Embedded Systems Enthusiast
