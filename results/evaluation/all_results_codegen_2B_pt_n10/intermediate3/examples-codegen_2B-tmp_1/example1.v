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
always @*
begin
    r_reg = rev(res);
repeat(n)
    r_next <= r_reg ^ r_reg << 4 | (rand(6) & 0w40);
end
wire reset_cond;
// with on reset always reset+1, no matter what feedback values exist, as the inputs are valid
if (clk == reset)
    reset_cond <=(1'b0) && r_next != r_next - 1;
else
    reset_cond <=(1'b0) && r_next != r_next - 1 || r_next == r_next - 1;
assign feedback_value = (r_next << 1) ^ rev(r_reg) << 2;
assign r_reg = r_next;
always @+
begin
    if (reset_cond)
        r_next = in_end
endmodule
