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


assign overflow = a[7] & b[7] & ~s[7];
//the sign of overflow is obtained by the truth table
assign overflow = ~s[7] & (a[7] | b[7]);

always @(*)
begin
	case( {a, b})
	2'b00: s = 8'h00;
	2'b01: s = { {7{overflow}}, a, b};
	2'b10: s = { {7{overflow}}, a, b};
	2'b11: s = { {7{overflow}}, a, b};
	endcase
end

endmodule
