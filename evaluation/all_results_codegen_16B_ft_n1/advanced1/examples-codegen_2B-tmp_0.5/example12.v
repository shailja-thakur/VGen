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


// This is a good design because of the fact that it is easy to implement a signed adder with a single instruction
// that is not a bitwise addition. 


// This is not a good design because the intermediate result is not a number but a signed number.
// The most significant bits of the result are the sign bits of the inputs. 
// The most significant bit of the result is not the sign bit of the output. 
// The sign bit of the output is the sign bit of the input. 
// This is a bad design because the intermediate result is not a number. 
// The most significant bits of the intermediate result are not the sign bits of the inputs. 
// The most significant bit of the intermediate result is not the sign bit of the output. 
// The sign bit of the intermediate result is the sign bit of the output. 
// The sign bit of the output is not the sign bitendmodule
