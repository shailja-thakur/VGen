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


// Implementation
reg [63:0] q;

always @(posedge clk or posedge load) begin
  if (ena) begin
    q <= data;
  end
end

always @(posedge clk or posedge load) begin
  if (ena) begin
    if (amount[1]) begin
      q <= q[8 - amount[0] : 0];
    end else begin
      q <= q[8 + amount[0] : 0];
    end
  end
end

endmodule
