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



reg [] qb = null;


process mod(final int modmin, final int modmax, final int db, final int ea) {
  if not $load$ then {
    {}
  } else if ena and clk'event and db > modmin and db < modmax then {
    reg [];
    {
      for (int y = 0; y < db; y++) {
        //Load xg
        for (int x = 0; x < 64; x++) {
          regAssert x <= 63;
          x.unused(xg[x]); 
        }
      }
    }
    ea' <= qb = max<int>[63:0]: reg[63:0];
    wait until clk'event;
  } else if not ena and clk'event then {
    ea' <= qbendmodule
