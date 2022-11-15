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


// note: The right shift direction will be reversed later.

// The shift operation is a synchronous load.
// When a shift is applied, the previously shifted data is held in the shift register.
// The shift register could be a register or a RAM.
// This can be implemented by a register or a RAM.
// The shift register is used as a bit array.
// The MSB is the MSB of the shift register.
// The LSB is the LSB of the shift register.
// The shift register is written with CMP followed by SR.
// CMP: compare
// SR: shift
// The shift register is read with CMP followed by SR.
// CMP: compare
// SR: shift

always @(posedge clk)
  if (load == '1' && ena == '1')
  {
    if (amount == '0')
    endmodule
