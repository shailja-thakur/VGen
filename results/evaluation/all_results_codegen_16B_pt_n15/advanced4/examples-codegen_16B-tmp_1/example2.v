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


 reg [31:0] shiftmode = 2'b10; // shiftright
 // shiftleft, shiftright, shiftright, shiftleft by 1bit, 
 // shiftright by 1bit, shiftright by 8bit, shiftleft by 8bit


reg q = 16'b0; // get value at leading edge of clk
flow logic [7:0] next = shiftmode & 3; // get right value for shiftmode & 3

always @(posedge clk) begin
  if (ena) begin
    if (ena) begin
      if ((load) && (next <= 2 )) q <= data [63:0]; // select value for just loaded register
      end
    else begin
      if ((zero) && (next == 3)) q <= data [63:0]; // return all-zeros
      if ((one) && (next == 2)) qend
end
end
endmodule
