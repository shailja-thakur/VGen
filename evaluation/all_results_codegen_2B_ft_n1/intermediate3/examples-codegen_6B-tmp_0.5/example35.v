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
begin
if(reset)
r_reg <= 5'b00000;
else
r_reg <= r_next;
end
assign q = r_reg;
assign feedback = {feedback_value, q[3], q[2], q[1], q[4]};
always @(*)
begin
r_next = q[4:1];
xor(r_next[4], r_reg[4], feedback[4]);
xor(r_next[3], r_reg[3], feedback[3]);
xor(r_next[2], r_reg[2], feedback[2]);
xor(r_next[1], r_reg[1], feedback[1]);
xor(r_next[0], r_reg[0], feedback[0]);
end
endmodule
