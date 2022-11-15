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
assign q = r_reg;
assign feedback_value = (r_reg == 5'b00000) ? 1 : 
(r_reg == 5'b00001) ? 0 : (r_reg == 5'b00010) ? 0 : (r_reg == 5'b00011) ? (~(r_reg[1])) : 1;
assign r_next = (r_reg == 5'b00000) ? 5'b00000 :
(r_reg == 5'b00001) ? r_reg :
(r_reg == 5'b00010) ? 5'b00011 : 
(r_reg == 5'b00011) ? 5'b00001 :
(r_reg == 5'b10000) ? r_reg :
(r_reg == 5'b10001) ? 5'b10010 : 
(rendmodule
