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
// This latency is 5.
assign q = r_reg;
assign r_next = xored[4:0];
half_adder ha2(r[4],s[0],feedback_value1,s[1]);
half_adder ha3(s[0],s[2],feedback_value2,s[3]);
half_adder ha4(s[1],s[2],feedback_value3,s[4]);
assign feedback_concat = {s[3],feedback_value1,s[4],feedback_value2};
reg a,b;
always @(posedge clk or negedge reset)
begin 
	if (reset == 1'b0)
	begin
	a = 1'b0;
	r[0] <= 1'b0;
	r[1] <= 1'end
end
endmodule
