// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


reg [6:0] carry_out = 0;	
wire [7:0] sum = a + b;	// sum bf the result

assign s[7:0] = sum[7:0];	// assign the most significant bits of sum to output s;

assign overflow = 2031 & (~carry_out[6] + carry_out[5] + carry_out[4] + carry_out[3]); // (&b) so that the bit operation is only performed if the carry_out is 0.
// (*4) so all assigned bit operations occur over four cycles starting from the next positive clock edge.



always @(*)
	begin
	if 	(carry_out == 0 & gain_out < gain_min)
	begin
	// gain is too small --> disallow input
	overflow <= 1; 
	s[7end
end
endmodule
