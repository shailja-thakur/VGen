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


reg [63:0] shifter;

`dout shifter'
// when load is high, shift shifter, and assign it to q.

initial begin
    clk <= 1'b0;
    ena <= 1'b0;

    load <= 1'b1;

    ena <= 1'b1;
end

always @(posedge clk)
  if (ena)
    shifter <= 0;
  else if (load)
    shifter <= data[63:0];
  else
    shifter <= 0;
`dout shifter'

// This is the shift function, which shifts the shifted register 1 or 8 bits.

reg [63:0] shifter;

initial begin
    clk <= 1'b0;
    ena <= 1'b0;

    load <= 1'b1;
    end
endmodule
