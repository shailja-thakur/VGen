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


// if the most significant bits of a and b are high then the most significant bit of s must be high to hold the value
// if the most significant bits of a and b are low then the most significant bit of s must be low to hold the value
 // if both the most significant bits are low then the most significant bit of s may be high or low
 

assign s = (a[7] == b[7]) ? 
	(	(a[7] == 1'b1) ? 
	 ( (a[6] == 1'b0) ? {a[5:0], 1'b1} : {a[5:0], 1'b0} ) 
	 : ( (b[6] == 1'b0) ? {b[5:0], 1'b1} : {b[5:0], 1'b0} )
	 )endmodule
