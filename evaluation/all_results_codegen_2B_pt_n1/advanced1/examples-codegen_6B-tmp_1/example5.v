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


// in order to turn on the "_n" input, we need to have "- 1.0"
// to convert them into as binary, the computer accepts the format like:
// numbera: 00000000-11110000-11101101-11111111-11111111-11111111-11111111111111111111111111111111
// numberb: 00000000-11110000-11101101-11111111-11111111-11111111-11111111-111111-11111111111111111111111111111111
// and it provides the usr the word formula, that is, 12345 and formula is 0000 12345 , we need to truncate the front end and convert
// to the bianry format, that is, 12345 becomes 10101010, and then convert to the 
// unsigned format, that is, 10101010! we converted total 2 occurrences of the signed overflow and return how many are there.


signed_adder(aendmodule
