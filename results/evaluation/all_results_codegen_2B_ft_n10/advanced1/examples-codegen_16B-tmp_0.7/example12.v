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

	reg signed [8:0] sum = 0;
	reg signed [8:0] sum2 = 0;
	reg of1,of2;
	
	always @ (a,b)
	begin
	
	// sum1 is the sum of a and b
	 sum1 = a + b; 
	
	// sum2 is the sum of the absolute values of a and b (a+b)
	sum2 = (a+b);
	 
	// if the most significant bit of sum1 is 1 then that constitutes an overflow
	// assume that the carry out is always the most significant bit
	if (sum1[8]) 
	begin
	sum = sum2[8];
	of1 = 1'b1;
	end
	// else if the most significant bit of sum1 is 0 then no overflow has occured
	else end
endmodule
