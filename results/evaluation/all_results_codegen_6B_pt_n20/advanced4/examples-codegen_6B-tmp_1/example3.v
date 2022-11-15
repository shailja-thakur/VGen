// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.




module adc(input clk, input data); 
 module adc(clk, data);

module tcms(input clk, input data);

module tdcms(input clk, input data);

module tpmem(input clk, input rst);

module clockack();

/*
(b) = b'11100000 | *b'10000000 | b0'1010 *
(a) = a'11100000 | b'00101100 <--- *(31,2) = a'00001010
  | a0'1100,000 | a1'1110,000
  | a2'1111,111 | a3'1110,001
  | a4'1100,11  | a5'1000,01
  | a6'0001,11  | a7'0100,10
  | aendmodule
