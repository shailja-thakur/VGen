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

instance lfsr_clock( 
    clk,
    reset,
    q
); 
wire [301:16] mask {indices_r_reg.w[0] & 0b1111111111111111; indices_r_reg.w[1] & 0b1111111111111111;}
reg [301:16] r_reg;
wire r_out;

instance lfsr_module( 
    clk,
    reset,
    q
); 
wire [3] clk_slavo;
wire [301:16] r_idx_reg {indices_r_idx.w[1] & 0b1111111111111111; indices_r_idx.w[0] & 0b1111111111111111;}
reg [301:16] indices_r_idx;
wire r_idx_link;endmodule
