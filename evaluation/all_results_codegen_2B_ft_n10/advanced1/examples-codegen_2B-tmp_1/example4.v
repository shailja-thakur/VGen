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


wire signed [7:0] overflow1;
wire [7:0] addin1a;
wire [7:0] addin1b;

//if you see non-negative flag following the minus-sign, it's a signed overflow.

//li position #10_-_03/------------insert to this file------------------------; 
always @ (a or b) 
	begin
	if ( a[7] == b[7] && a[7] != s[7] )	
	overflow1 = 1'b1;
	else if ( a[7] /* complement of b */ == s[7] )
	overflow1 = 1'b1;
	else if ( b[7] /* complement of a */ == s[7] )
	overflow1 = 1'b0;
	end
endmodule
