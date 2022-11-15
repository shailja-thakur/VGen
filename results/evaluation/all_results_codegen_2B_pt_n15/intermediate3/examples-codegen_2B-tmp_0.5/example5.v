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
always @(posedge clk)
    r_reg <= (r_next & 0x1) | (r_next & 0x2) | (r_next & 0x4) | (r_next & 0x8) | (r_next & 0x10) | (r_next & 0x20) | (r_next & 0x40) | (r_next & 0x80) | (r_next & 0x100) | (r_next & 0x200) | (r_next & 0x400) | (r_next & 0x800) | (r_next & 0x1000) | (r_next & 0x2000) | (r_next & 0x4000) | (r_next & 0x8000) | (r_next & 0x10000) | (r_next & 0x20000) | (r_next &endmodule
