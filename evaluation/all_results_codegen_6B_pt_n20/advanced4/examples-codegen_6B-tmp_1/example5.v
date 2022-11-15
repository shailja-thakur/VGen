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


tff = advance;

delay n.1 ns;

output prev_ply = active;

reg delay_r0 = 0;
reg delay_r1 = 0;
reg delay_r2 = 1;
reg delay_r3 = 0;
reg delay_r4 = 0;
reg delay_r5 = 8;
case

  (f3c, 9);
  if (ada41()) {
    until clk.write.load == 1'b1;
      goto DelaySetUp;
  } else goto TWCE;
 	  
  // STARTED
  @(f3c, 10);
  if (ada41()) {
    until clk.write.load == 1'b1 && prev_ply == 'z;
      goto DelaySetUp;
  } else goto TWCE;
					 
  // STARTendmodule
