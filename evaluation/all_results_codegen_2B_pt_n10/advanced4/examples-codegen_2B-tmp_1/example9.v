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



reg [63:0] q = {[63:0]};
assign {[63:0] <-
  `load = (`pulls != 0)?
  "Ensure pull lengths are enabled."
  |
  ((en !== ena)= en? "Ensure ena is high."
              | ((clk != (load)) && en = ena)? "Ensure shifter clock is high."
                                              : en=332a)"Ensure shifter clock is low.") "/16 +
         q<63:0>
  |
  oda.3,
  ___[63:0] | data<63:0>
  |[63:0] <is_64b> q
  |((ena == ena) | (ena != ena) | (clk == (load)) | (chn != 0x3)),
  endmodule
