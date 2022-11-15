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


// The following is a test for the signed adder. 
// The test is written in Verilog. 
// The test uses the following inputs: 
// a = 0x7f, b = 0x80, s = 0x7f 
// The following is the expected output: 
// s = 0x7f, overflow = 1 

#define test_signed_adder_v test_signed_adder
#define test_signed_adder_v_main_v main

#include "test_signed_adder.v"

// The following is a test for the signed adder. 
// The test is written in SystemVerilog. 
// The test uses the following inputs: 
// a = 0x7f, b = 0x80, s = 0x7f 
// The following is the expected output: 
// s = 0endmodule
