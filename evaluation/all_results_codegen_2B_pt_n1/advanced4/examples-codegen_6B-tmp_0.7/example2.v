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


// This is a very simple testbench for the shift register.
// The simulated shift register has a fixed size of 8 bits.

begin

  // reset register.
  reg [63:0] q = 0;

  assign load = 1;
  assign ena = 1;
  for (int i=0; i<8; i++)
    assign q = q | ((data [i] & 1) << (7-i));
//  assign q = q | ((data [8] & 1) << (7-8));

  assign load = 0;
  assign ena = 1;
  assign amount = 0;

  while (1) begin
    if (ena) begin
      if (load) assign q = data [63:0];
      assign ena = 0;
    end
    begin
      if (loadend
end
end
endmodule
