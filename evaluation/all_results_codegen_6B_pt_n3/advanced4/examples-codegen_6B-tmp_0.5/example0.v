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


// clock is the clock signal.
// load is the load signal.
// ena is the enable signal.
// amount is the amount signal.
// data is the data signal.

// The following equations are used to find the output of the shift register.
// q = data[63:0]
// q' = data[63:0] << amount
// q'' = (data[63:0] << amount) >> (amount - 1)

always @(posedge clk)
  if(ena)
    if(load)
      q = data;
    else
      q = q << amount;

endmodule
