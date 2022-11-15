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


reg [7:0] b_Ia; // holds the non-signed version of b
reg [8:0] s_Ia; // holds the non-signed version of s

always @* begin
	b_Ia = b;
	b_Ia[7] = b[7];
	
	s_Ia = a + b_Ia; // adds 8-bit numbers a and b, giving a new sum s'
	s_Ia = s_Ia[7:0]; //in case there is an overflow, the number will wrap around, this assign statement based on that dumps the MSB if there is overflow
	s[7] = s_Ia[8];
	// the signed adder may still have an overflow, check for overflow.
	
	if ((a[7] == 0 && b[7] == 0) && (end
endmodule
