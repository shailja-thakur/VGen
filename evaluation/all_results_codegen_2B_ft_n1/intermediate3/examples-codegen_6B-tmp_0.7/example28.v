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
// initializing a 5 bit register to 0 is done by assigning 0 to the most significant bit
// also we have to initialize the other bits of r_reg to 0
// r_next should be initialized to
// 0000000000000001
// after the one-time initialization we start the feedback loop by driving the two most significant bits of r_reg to
// a logic 1 and then driving a logic 0 to r_next
// the q output is actually the XOR of r_reg and r_next
// the feedback loop will output the XOR of r_reg and r_next
// r_next should be initialized to
// 0000000000000001
// after the one-time initialization we start the feedback loop by driving the two most significant bits of r_reg to
// a logic 1 and then driving a logic 0 to r_next
// the q output is actually the XOR of r_reg and r_next
assignendmodule
