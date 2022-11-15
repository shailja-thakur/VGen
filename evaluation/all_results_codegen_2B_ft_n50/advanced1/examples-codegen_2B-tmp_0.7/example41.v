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


// The following block of code implements a signed adder using two XOR gates and two AND gates.
// The result of the 2's complement addition is assigned to the output s.
// The most significant bit of the result is stored in the output overflow.



// The following block of code implements a 2's complement addition using two XOR gates.
// The result of the 2's complement addition is assigned to the output s.
// The most significant bit of the result is stored in the output overflow.



// The following block of code implements a 2's complement addition using one XOR gate.
// The result of the 2's complement addition is assigned to the output s. 
// The most significant bit of the result is stored in the output overflow.



// The following block of code implements a 2's complement addition using one AND gate.
// The result of the 2's complement addition is assigned to the output sendmodule
