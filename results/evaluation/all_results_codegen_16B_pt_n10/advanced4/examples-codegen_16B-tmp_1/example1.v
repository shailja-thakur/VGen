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

  
  assign ena = ena ? "1" : "0";
// When clock is high, chore moves data[63:0] into shift register q.
  assign clk = clk & ! load ^ ena;
  reg [63:0] long_shift[3:0] = case (amount[0]) 
    // 2'b00 (shift left by 1 bit)
    : data[63:0] and (load << prev()[8:0] | ~(1<<prev()[8:0])) | prev().req();
  
  assign clk = clk && (amount[1]) == (amount[0]);
  
  reg [63:0] short_shift[3:0] = case (amount[2]) 
    // 2'b10 (shift right by 1 bit)
    : ~data[63endmodule
