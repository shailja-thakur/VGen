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
always begin begin ## a_wait ## if (reset == 0) begin ## a_stop ## begin ## a_impl ## end endif ## r_reg = 1; 
## a_start ## 
## a_impl ## begin ## a_start ## if (clk == 1) begin ## a_if ## begin ## a_assign ## q[0:4] = xor(\
## q[2:4], r_reg[4:4]); ## a_else ## begin ## a_assign ## q[0:4] = xor(\
## q[2:4], r_reg[4:4]); ## a_endif ## end ## end ## end endif ## end ## a_else ## begin ## a_if ## if (clk == 1) begin ## a_assign ## r_next[0:4] = xor(\
## r_next[2:4], qend
end
endmodule
