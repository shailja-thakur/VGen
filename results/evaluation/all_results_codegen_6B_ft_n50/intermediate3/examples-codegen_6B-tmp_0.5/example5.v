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
always @(posedge clk or posedge reset)
if(reset)
r_reg <= 5'b0;
else
begin
r_reg <= r_next;
feedback_value <= r_reg[2] ^ r_reg[4];
end
assign q = r_reg;
// next_state logic
always @(*)
begin
r_next = r_reg;
xor(r_next[2], r_reg[2], feedback_value); // xor(r2, r1, feedback);
xor(r_next[3], r_reg[3], feedback_value); // xor(r3, r2, feedback);
xor(r_next[4], r_reg[4], feedback_value); // xor(r4, r3, feedback);
if(r_next[2:0] ==end
endmodule
