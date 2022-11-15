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
// First approach: a shift left and a shift right. Replace first shift 
// left with a fulladd8 operation that adds the shifted value. Swap 
// feednac and shift right arguments to feed the bit shifted value as 
// the input for later operation.
assign q = r_reg;
assign q_next = {q[0],q[4:1],feedback_value};
assign feedback_value = q[2]^q[4]; 
// second approach:
// Start building feedback_value from left child of current_state
// (current_state having been assigned in the pps/1 tostarting xbsconcat)
function [4:0] b4;
input [4:0] starting_value;
input [4:0] child_value;
begin
	case (starting_value) 
	
	5'b01101end
endmodule
