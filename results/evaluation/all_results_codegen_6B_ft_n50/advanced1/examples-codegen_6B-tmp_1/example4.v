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


reg signed [8:0] s;

always@(a or b or s)
if (s[7] == a[7] && s[7] != b[7]) 
overflow = 1; 
else overflow = 0; 
//It seems like if a and b have opposite signs, then the sum has opposite signs. I'm gonna make this mistake a signed overflow.

//The carry into the msb of s[7] is calculated after the carry is calculated into the msb of s[8].

always @(s[8] or a[6] or b[6])
if (a[6] && b[6] && s[7]) 
s[0] = 1; 
else if (!a[6] && !b[6] && s[0]) 
s[0] = 0; 

assign s[1endmodule
