// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
assign q = r_reg; //r_reg gets new random values every clk th invoke of random
// Using the following Verilog code to create a truth table with a circuit
// for a level triggered flip-flop
// $display("The shifting values are %b", r_next);
// alter the condition in line 47 to include inputs to produce the random
// values
initial
begin
r_reg = 1 #5;
// r_reg = 2 #10;
end
// define an integer lw for reading other module variables
integer lw;
// DEFINITIONS FOR THE LFSR INPUT VALUES. Inputs to the lw module must be 5-bit numbers.
// Add the values of all the bit positions serially (i.e. shift left shift_amount values )
// with the value input to the lfsr module. The values of the input"shiftendmodule
