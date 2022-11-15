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
begin
    if (reset)
        r_reg <= 1;
    else
        r_reg <= r_next;
    r_next <= r_reg[4:0] xor (r_reg[4:0] << 2) | (r_reg[3] << 3) | (r_reg[2] << 4);
    feedback_value <= (r_next[4:0] << 5) | (r_next[3] << 4) | (r_next[2] << 3) | (r_next[1] << 2) | (r_next[0] << 1);
    q <= feedback_value;
end
endmodule
