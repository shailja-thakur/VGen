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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
assign q = r_reg;
assign r_next = {r_reg[3:0], feedback_value};
// use functionality of qff to create the functionality of a flipflop
// wire stays put if Q[0] goes from 0 to 1
// Flip-flop inputs which resonates: 
// R0 = (Q[3] & ~Q[0]) | (~Q[3] & Q[0]) 
// R1 = (Q[3] & Q[0]) | (~Q[3] & Q[2]) 
// R2 = (Q[3] & ~Q[2]) | (~Q[3] & Q[2]) 
// R3 = (Q[3] & Q[2]) | (~Q[3] & ~Q[2] & Q[1]) 
// [Not R3: Q[0] is concendmodule
