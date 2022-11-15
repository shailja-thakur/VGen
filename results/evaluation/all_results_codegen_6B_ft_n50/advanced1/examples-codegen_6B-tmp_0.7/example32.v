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


// The carry (co) is the output of the adder and is the highest bit of the output value s.
// assign the carry output of the adder to the output overflow. 

assign overflow = carry; 

// create 8-bit adder that adds two 8-bit numbers a and b

adder add1(a[3:0],b[3:0],s[3:0],carry[0]);
adder add2(a[7:4],b[7:4],s[7:4],carry[1]);

endmodule
