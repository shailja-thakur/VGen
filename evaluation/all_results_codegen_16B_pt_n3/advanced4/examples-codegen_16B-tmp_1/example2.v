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


always @(posedge clk)
  if (ena) begin
    if (load) q <= data;
    if (amount == app.BitSet64(0, 63)) 
      q <= data[62:0];
    if (amount == app.BitSet64(1, 63)) 
      q <= data[61:0];
    if (amount == app.BitSet64(2, 63)) 
      q <= data[60:0];
    if (amount == app.BitSet64(3, 63)) 
      q <= data[59:0];
  end
end

// Design and implement a FPGA arbiter.
// Arbitration is based on highest priority register's address (SI).
// For any transaction to complete that is accessing a register, 
the #player will repeatedly check if the register is 
free or in use by ADDendmodule
