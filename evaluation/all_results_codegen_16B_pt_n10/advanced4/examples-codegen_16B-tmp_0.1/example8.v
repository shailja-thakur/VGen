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


// The shift register is implemented as a 64-bit register, with the high and low
// 32-bit registers being connected to the inputs and outputs.
reg [63:0] q;
reg [31:0] ql;
reg [31:0] qh;

always @(posedge clk) begin
  if (ena) begin
    if (load) q <= data;
    q <<= amount;
    ql <= q[31:0];
    qh <= q[63:32];
  end
end

endmodule
