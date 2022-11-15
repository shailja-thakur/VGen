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


assign overflow = a[7]&b[7] | a[7]&s[6] | b[7]&s[6];

// N is the most significant bit of a and b. The most significant bit of the output (s) is the least significant bit.
assign N = s[7];

assign zeros = 9'd000; //this is 6 bits
//The output is the least significant bit of the output is the most significant.
assign s = s[0]^N; 
endmodule
