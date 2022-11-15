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

	reg [8:0] s;

	reg of;

	always @ (a, b, s)
	begin
	
	if ({a[7], b[7]} == 1'b0 && {s[7], s[9], s[10]} == 1'b0)
	begin
	of = 1'b1;
	end

	else if ({a[7], b[7]} == 1'b1 && {s[7], s[9], s[10]} == 1'b1)
	begin
	of = 1'b1;
	end

	else if ({a[7], b[7]} == 1'b1 && {s[7], s[9], s[10]} == 1'b0)
	begin
	of = 1'b1;
	end

	else if ({a[7], b[7end
endmodule
