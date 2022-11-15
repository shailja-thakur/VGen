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
// q = ~0101;
assign q = {~r_reg[3]^r_reg[2]^feedback_value^r_reg[0],r_reg[3],r_reg[2],r_reg[1],r_reg[0]};


always @ * 	
	case( {reset,feedback_value,r_reg[3],r_reg[2],r_reg[1],r_reg[0]} ) 
	//case block to handle all 8-bit inputs
	0: 	r_next = {1'b0,q[2],q[0],q[3],q[4],q[1],q[2]^q[3]};
	1: 	r_next = {1'b0,q[1],q[3],q[2],q[0],qendmodule
