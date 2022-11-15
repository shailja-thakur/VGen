// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Inequalities, specifically the compare operators, rely on truth values.
// 
// Note: it is common practice to use wires for inferred connections, as in the 
// example below. When wiring real circuits, use strong typing to make clear 
// what is being passed, and how is being passed, and how the signal will
// flow through the design. The use of wires with the verilog language will 
// call for a brittle circuit or logic designed so that all possible verilog 
// authors can work together.
// 
// For another services type use to emit a single-cycle xilinx design, I am using 
// an inferred problem. Not sure how I will accomplish that task using an inferred 
// design.

// A feature of UARTs is that they stop receiving data for a significant period 
// of time. Using an assignment operator would likely send data over aendmodule
