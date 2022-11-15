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


author	A00747424

// notice that I don't use register to reduce the code size, so the author is supposed to be very familiar with this code and understand the semantics of state feature control
// each state control includes code, ....

{
static int state = 0;

Soundoverflow over = a | b; // notice that this is rvalue expression rather than lvalue expression
			    // however with the current design each function (but soundoverflow) returns a value. Refactoring may help to rewriten this with a lvalue expression
			    // However I am not sure if refactoring is carried out...
state |= over; 
output overflowendmodule
