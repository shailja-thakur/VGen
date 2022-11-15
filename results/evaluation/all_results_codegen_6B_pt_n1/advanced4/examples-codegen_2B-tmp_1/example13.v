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


// Synchronous loads are taken care of (e.g. if load is low, data data[63:0] assigned to source q).

// Synchronous register occupancy: both data and q can be written, and load must be.

// Analog SPI bus clock frequency 10Hz (8 MHz / divider).

wire clock_rx, clock_tx, load_rx, load_tx;

reg [64:0] shift_reg;

reg shift_dir = 0b1111; // Can only 0 or 1 piece of data shaped by amount.
reg q = 0;

struct shift_inst
{
  unsigned word (unsigned o, unsigned am, unsigned n)
  {
    if (read_shift_dir()) {
      if (am == 0)
        return (n << 1) + o;
      else
        return (n << (am - 1endmodule
