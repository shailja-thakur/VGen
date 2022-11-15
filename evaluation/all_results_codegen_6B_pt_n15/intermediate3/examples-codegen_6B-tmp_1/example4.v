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
always @ (posedge clk)
    r_reg <= ((reset ? 1'b1 : 1'b0) << 5) |
           ((r_reg[6:0] & 1'b0) << 4) |
           (r_reg[4:0] || ((0x1F & r_reg[7:5]) << 5) | ((0xDF & r_reg[8:5]) << 4));
always @ (negedge clk)
    r_next <= (((0x1F & r_reg[7:5]) << 5) | ((0xDF & r_reg[8:5]) << 4));
	output gcc_prim_lfsr_resethigh     <=(0_1 & clk & r_next);
	output gcc_prim_lfsr_0             <=(feedback_value & clk);
	endmodule
