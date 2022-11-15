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


// design:
// - base builder
// - unitary builder
// - one unitary job for 2 bits, 1 for higher bits
// - include inheritance from calc?
// - list of flags
// - can write real arimstory
// - PREPARE for JIT: nearly no flags - 32 bits
// - points to so func:
// - use register for input output 
// - not self contained
// - minimize serialization size
endmodule
