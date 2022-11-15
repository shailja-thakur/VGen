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


subckt xinplow(input [3:0] data, output [3:0] q)
// Apply the low order 4 bits of data to the shifter's data register.
mux srca,enbk1,enbk0,clkk;
input dckk,srca,enbk1,ena;
output dckk,enbk1,enbk0,steal,dckck;

if {(clk == 1 && (ena == 1 && srca == 0 && enbk1 == 0 && enbk0 == 1 && srca == 1))}
// translated into
if {(clk == 1 && ena == 1 && (data[2] == 0 && data[1] == 0 && data[0] == 0))}
// translated into
if {(ena == 1 && clk == 1 &&endmodule
