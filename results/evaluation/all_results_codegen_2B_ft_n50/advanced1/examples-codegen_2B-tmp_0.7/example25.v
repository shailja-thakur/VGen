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


wire signed [7:0] carry;

always @*
begin
	carry = {b[7] ^ a[7], carry[6:0] = b[7:0] ^ a[7:0]};	
	
	case (carry)
	
	2'b00:
	begin
	
	s[7:0] = a[7:0] + b[7:0] + carry[7];
	
	if (s[7] == 1'b1)
	
	overflow = 1'b1;
	
	
	end
	
	2'b01:
	begin
	
	s[7:0] = a[7:0] + b[7:0] + carry[7];
	
	if (s[7] == 1'b0)
	
	overflowend
end
endmodule
