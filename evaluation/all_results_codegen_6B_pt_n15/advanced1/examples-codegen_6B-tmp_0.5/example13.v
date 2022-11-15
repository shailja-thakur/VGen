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


// The signed adder should be implemented as a state machine. 
// The state machine should be initialized with the first number a and the second number b. 
// The states should be: 
// 0: a and b are zero. 
// 1: a is zero. 
// 2: b is zero. 
// 3: a and b are negative. 
// 4: b is negative. 
// 5: a is positive. 
// 6: b is positive. 
// The state machine should set the output overflow to false if no signed overflow occurs. 
// The state machine should set the output s to be a + b. 
// The state machine should set the output overflow to true if the signed overflow occurs. 
// The state machine should set the output s to be the sum of a and b. 

// The states should be encoded in the following way: 
endmodule
