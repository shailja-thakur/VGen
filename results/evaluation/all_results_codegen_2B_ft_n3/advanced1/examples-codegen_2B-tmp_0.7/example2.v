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



assign overflow = ((a[7] & b[7]) & (~s[7]) & (~a[7] | b[7])) | ((a[7] | b[7]) & (~s[7]) & (~a[7] | b[7]));

// add the two numbers using the synchronous up/down counter adder example

// The output s is displayed on the left (e.g. s=0) and the overflow on the right (e.g. overflow=1).
// The output overflow is a three-bit binary number, where 1 indicates the event that occurred.
// The subtraction of b from a is shown on the left and subtraction of a from b is shown on the right.

always @ (posedge a or posedge b) 
begin
	if (a[7] & b[7] & (~s[7]))end
endmodule
