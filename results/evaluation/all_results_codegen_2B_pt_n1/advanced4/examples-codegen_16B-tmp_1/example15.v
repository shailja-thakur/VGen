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


//When load is high, assign data to shift register
always@(posedge clk)
begin
if(load)
q <= data;
else
begin
case(amount)
2'b00: 	begin q <= q << 1; q[63] = q[62]; end
//Multiply by 2
2'b01: 	begin q <= q << 8; q[63] = q[63]; end
//Shift Right by 1 bit if amount is 2'b01 OR if amount is 2'b10
2'b10:	begin
case(amount)
2'b01: begin q <= q >> 1; q[63] = q[63]; end//右移1位
2'b10: begin q <= q >> 1; q[63] = q[62]; end//右移8位
endend
end
endmodule
