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

 register [63:0] shift0;
 
 
 // Determine shifts.
 assign lsftA = (amount == 2'b00) ? shift1 :
 // If shift left by 1 bit.
 ((amount == 2'b01) ? shift8 :
 // If shift left by 8 bits.
 ( (amount == 2'b10) ? shift1: 
 // If shift right by 1 bit.
 ((amount == 2'b11) ? shift8 : 0));
 // Determine shift amount.
 assign shift0 = (lsftA == 1) ? data: 0;
 assign shift1 = (lsftA == 2) ? data: 0;
 assign shift8 = (lsftA == 3) ? data: 0;
 
 // Determine shift direction. 
 assign l2r = (~(amount[1])) & (amount[0]);
 // Current shift direction.endmodule
