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


// the maximum amount that can be shifted
const maxshift = 1;
// the number of bits in the shift register
const nbits = 64;

reg [63:0] q;
reg load;
reg ena;
reg [2:0] amount;

always @(posedge clk)
   if(ena)
   q = data;

// Shift left by 1 bit
always @(posedge clk)
   if(ena & load & amount == 0)
      q = q << 1;

// Shift left by 8 bits
always @(posedge clk)
   if(ena & load & amount == 2)
      q = q << 8;

// Shift right by 8 bits
always @(posedge clk)
   if(ena & load & amount == 3)
      q = q >> 8;

// Shift right byendmodule
