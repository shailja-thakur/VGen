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

 
// give f the value 1 to perform both and then reduce f back to the xor new for the fast half add 
// xor are a math hint for doing the ex or selection in the fast case of add wo and diati are and inputs and carry[2]s
module full_adder (input a,
 input b,
 input c,
 output s,
 output carry); 

xor(p1,a,b); // p1 is the xor of ab
xor(p2,p1,c); // p2 is the xor of p1 and c

and(w1,a,b); // w1 is the and of ab
and(w2,p1,c); // w2 is the and of p1 and c

or(s,w1,w2); // s is the sum of ab and c 

and(carry,endmodule
