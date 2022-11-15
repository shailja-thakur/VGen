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
// internal registers and wires and their sizes
//`include "assign_static_l.v"
assign r_next[0] = r_reg[0];
assign r_next[4:1] = r_reg[2:0];
assign where_to_come_from = ((r_reg[2] == 1) | (r_reg[4] == 1))? {r_reg[1], 2'd0}: {r_reg[3], r_reg[1], 2'd2};
assign feedback_concat = {{!where_to_come_from[0], where_to_come_from[1], where_to_come_from[2]},{where_to_come_from[3]}};
assign feedback_xor = (r_reg[0] ^ r_reg[2] ^ r_reg[endmodule
