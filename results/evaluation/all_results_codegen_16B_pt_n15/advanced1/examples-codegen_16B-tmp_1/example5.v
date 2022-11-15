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


// both a and b are set to zero at the start of each addition cycle.
// The most significant bit of s is always zero, and the carry out from one addition cycle is passed on to the carry out of next cycle.

signed_adder(a,b,s,overflow);


//************* Test code starts here ******************

 
a = 10;
a = 9;


b = 9;



s = 9;

// Expected output s = 18 and overflow = 0
// Expected output s = 19 and overflow = 1

print("a = " + a + " b = " + b + " s = " + s + " overflow = " + overflow + "\n");



//************* Test code ends here ******************


endmodule
