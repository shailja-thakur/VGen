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


// The shift register is implemented as a register that holds the data.
// The shift register is initialized to 0.
always @(posedge clk)
begin
  if (load == 1)
    q <= data;
  if (ena == 1)
    if (amount == 0)
      q <= data;
    else if (amount == 1)
      q <= shift_left(data, 1);
    else if (amount == 8)
      q <= shift_left(data, 8);
    else if (amount == 9)
      q <= shift_right(data, 1);
    else if (amount == 17)
      q <= shift_right(data, 8);
  else
    q <= 0;
end

endmodule
