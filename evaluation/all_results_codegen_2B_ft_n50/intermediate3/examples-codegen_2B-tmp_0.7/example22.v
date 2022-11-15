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
	begin
	r_reg <= 5'b10000;
	end
else
begin
r_reg <= r_next;
end
assign q = r_reg;
assign feedback_value = r_reg[4]^r_reg[3];
add4bit_feedback add4bit_feedback_0(
.a_in(r_reg[4]),
.b_in(r_reg[3]),
.c_in(feedback_value),
.s_out(r_next[0])
);
add4bit_feedback add4bit_feedback_1(
.a_in(r_reg[4]),
.b_in(r_reg[3]),
.c_in(r_reg[2]),
.s_endmodule