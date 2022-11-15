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


// This is a test bench for the above module.
// It uses a 64-bit shift register and a load to feed it.
// The shift register is loaded with the value 0x12345678.
// The load is set high.
// The module is enabled.
// The module is shifted left by 1 bit.
// The module is shifted right by 1 bit.
// The module is shifted left by 8 bits.
// The module is shifted right by 8 bits.

reg [63:0] q;
reg [63:0] data;
reg load;
reg ena;
reg amount;

initial begin
  q <= data;
  load <= 1;
  ena <= 1;
  amount <= 2'b00;
end

always @(posedge clk) begin
  if (ena) begin
    if (load) begin
      q <= data;end
end
end
endmodule
