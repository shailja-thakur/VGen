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
assign r_next = r_reg;
assign feedback_value = (r_reg[4] ^ r_reg[3]);
assign q = (dec[r_next] && reset);
end



module t1( 
    input clk, 
    input reset, 
    input [3:0] p, 
    output [8:0] p_next
);
output [6:0] p_bit;
wire [6:0] p_next;
assign p_next = p;
assign p_bit = (p_next[6] & dec(r_next[5]);
end

module t2( 
    input clk, 
    input reset, 
    input [6:0] p_bit, 
    output latch_reg
);
assign latch_reg = p_bitendmodule
