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

 // Declare as registers
reg [63:0] q1, q2, q3;
always @ (posedge clk)
begin
if (load)
q <= data;
else if (ena)
begin
if (amount == 2'b00)
q <= q1;
else if (amount == 2'b01)
q <= q2;
else if (amount == 2'b10)
q <= q3;
else if (amount == 2'b11)
q <= 64'b0;
end
end
// shift left by 1 bit
always @ (posedge clk)
begin
if (load)
q1 <= q;
else if (ena & amount[1])
q1 <= q1 << 1;
end
// shift left by 8 bits
always @ (posedge clk)
begin
if (load)
q2 <=end
endmodule
