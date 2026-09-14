# ece-128-lab-1

### Project Description
Design and implementation of an 8-to-1 Multiplexer using behavioral, structural, and dataflow modeling in Verilog using Vivado and a Basys 3 FGPA board. 

### Instructions
There are three design files, behavioral_8to1_mux.v, dataflow_8to1_mux.v, and structural_8to1_mux.v. Each of these files are viable for simulation and all three are designs for an 8 to 1 multiplexer. Along with the design files is a general testbench file that works for all three design files called multiplexer_tb.v. In order to run the simulation, one must go on the multiplexer_tb.v file and insatiate the intended design module from one of the design files. Once that is done the simulation can be ran. The testbench file is written so that the simulation will test all selector bit combinations and display whether or not the output corresponds to the correct input. 

In order to implement the FGPA, one must run the synthesis and then implementation using Vivado with the correct design file set as the top design source. Once that is done, run the bitstream, program the FGPA using Vivado, and then the FGPA should be implemented to correspond to the design code. 3 of the switches on the FPGA are the selectors and the first 8 from right to left are the inputs. Selecting a specific selector combination (correlation to 3 bits, 000 -> 111) will have the LED output equal to a specific input switch. For example keeping all 3 selector switches OFF will have the right most LED equal to the output. Turning on the corresponding input switch will turn on its LED.
