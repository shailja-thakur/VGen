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


// Implementation


// address 0
assign s[7:0] = a[7:0] + b[2:0];          // bit[8 7 6 5 4 3 2 1 0]
assign overflow[0] = ((~a[7] & ~b) || (a[7] && b)) && s[7];


// address 1
assign s[8] = a[8] + b[1];
assign overflow[1] = ((~a[7] & ~b) || (a[7] && b)) && s[8];


// address 2
assign s[9] = a[9] + b[0];
assign overflow[2] = ((~a[7] & ~b) || (a[7] && b)) && s[9];


// address 3
assign overflow[3] = ((~endmodule
