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


reg [64:0] q;
reg [2:0] count;

// When ena is high, shift q.
always @(posedge clk)
  if (ena)
    q = data;

// When load is high, increment count.
always @(posedge clk)
  if (load)
    count = (count + 1) & 63;

// When amount is low, load q with data[amount].
always @(posedge clk)
  if (amount == 0)
    q = data[count];

// When amount is high, load q with data[63 - amount].
always @(posedge clk)
  if (amount == 63)
    q = data[63 - count];

// Shift q by amount bits.
always @(posedge clk)
  if (amount > 0)
endmodule
