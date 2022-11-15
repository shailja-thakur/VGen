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



// ADDRESS: 
// 0xF0001000
// Registers: 
// - CLK:      ADDR[0], bit 0.
// - LOAD:     ADDR[1]
// - DATA[63:0]: ADDR[2:0]
// - Q[63:0]:  ADDR[3:0]

// LINK: 
// 0xF0001800
// Registers: 
// - CLK:      LINK[0], bit 0.
// - DATA[63:0]: LINK[1:0]
// - Q[63:0]:  LINK[3:0]
// 
// XADDR:0xF0002000
// Registers: 
// - CLK:      XADDR[0], bit 0.
// - DATA[63:0]: XADDR[2:0]endmodule
