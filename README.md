# RISC-CPU-Verilog
This is a university project of a discipline of Digital Systems Design. We developed a CPU with RISC architecture design in FPGA coding in Verilog and using Quartus II.

Main features:
* the architecture Word is defined in 32 bits;
* all the system is implemented in pipeline;
* all instructions are formed by 4 bytes;
* as the program memory as the data memory are of 1kWord;
* in each Reset, the Program Counter always point to de address 0 of the program memory;
* the instruction set don't have Branch or Jump instructions;
* the register file module just contains 16 records;
* as the memorys works with 32 bits Words, the PC increment is of one by one.
