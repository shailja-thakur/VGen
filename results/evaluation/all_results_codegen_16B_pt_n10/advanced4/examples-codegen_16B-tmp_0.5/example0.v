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


// The shift register is implemented as a simple register with no
// control logic. The register is latched when the shift register
// is loaded, and the register is also loaded with the shifted value
// when the shift register is enabled.
assign q = {data[63:0], ena};

// The shift register is enabled when both the load and enable inputs
// are high.
always @(posedge clk) begin
  if (load && ena) begin
    q <= data;
  end
end

// The shift register is shifted left by 1 bit when the amount input is 2'b00.
// The shift register is shifted left by 8 bits when the amount input is 2'b01.
// The shift register is shifted right by 1 bit when the amount input is 2'b10.
// The shift register is shifted right by 8 bits when the amount input is 2'bendmodule
