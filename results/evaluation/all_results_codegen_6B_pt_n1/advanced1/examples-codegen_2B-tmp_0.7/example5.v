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


wire signed [7:0] a_and_b;
wire signed [7:0] a_or_b;
wire signed [7:0] a_xor_b;

assign a_and_b = a & b;
assign a_or_b = a | b;
assign a_xor_b = a ^ b;

assign overflow = a_and_b[7] & ~a_or_b[7] | a_or_b[7] & ~a_and_b[7];



always @(*)
begin
if(a_and_b[7] & ~a_or_b[7])
	s[7:0] = a_and_b[7:0];
else if(a_or_b[7] & ~a_and_b[7])
	end
endmodule
