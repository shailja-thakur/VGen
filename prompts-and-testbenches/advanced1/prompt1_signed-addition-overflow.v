// This is a signed adder that adds two 8-bit 2's complement numbers. It also captures a signed overflow. 
module signed_adder(input [7:0] a, input [7:0] b, output [7:0] s, output overflow ); 