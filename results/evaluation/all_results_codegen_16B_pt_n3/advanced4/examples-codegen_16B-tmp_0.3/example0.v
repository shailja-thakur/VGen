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



// The shift register is loaded with data[63:0] on the rising edge of load.
// The shift register is shifted on the falling edge of ena.
// The shift register is shifted by amount[1:0]*8, where amount[1:0] is the value of ena.
// The shift register is shifted by amount[1:0]*1 if amount[1:0] is 0.
// The shift register is shifted by amount[1:0]*8 if amount[1:0] is 1.
// The shift register is shifted by amount[1:0]*1 if amount[1:0] is 2.
// The shift register is shifted by amount[1:0]*8 if amount[1:0] is 3.
// The shift register is shifted by amount[1:0]*1 if amount[1:0] is 4.
//endmodule
