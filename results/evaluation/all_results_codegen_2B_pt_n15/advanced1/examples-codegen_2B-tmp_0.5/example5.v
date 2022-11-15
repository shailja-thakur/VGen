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


// function add(a, b, s, overflow) returns (a, b, s, overflow)
// var a, b, s, overflow;
// s = a[7:0] + b[7:0];
// overflow = (s > 127) ? 1 : 0;
// if (s > 127) {
//     s = (s - 256) + overflow;
// }
// a[7:0] = s;
// b[7:0] = a[7:0] + b[7:0];
// overflow = (b > 127) ? 1 : 0;
// if (b > 127) {
//     b = (b - 256) + overflow;
// }
// return [a, b, s, overflow];


module signed_adder_s(input [7:0] a,
    input [7:0] bendmodule
