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
always @(reset) begin
    stall_until(clk) R_reg.q = r_reg.q;
    // r_reg is later connected to the output q
    R_reg.q = r_reg.q ^ 128;
    r_reg.q = r_reg.q ^ 4;
    r_reg.q = r_reg.q ^ clk;
    r_reg.q = r_reg.q ^ r_next;
    r_next = r_reg.q;
    // force dout[on reset] in head until /reset and then
    // force dout[on reset] out 5 bits that are intended to be used for noise
    r_reg.q ^=  reset ? 0 : (-4096 >> 3);
end;

lfsr gen_lfsr( 
    input clk,
    inputendmodule
