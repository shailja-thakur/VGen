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


// wire [19:0] i;
// wire C[7:0] = i[7:0]; // specify which bits to cause an arithmetic left shift.
// wire D[7:0] = i[15:8]; // specify which bits to cause an arithmetic right shift.
// wire E[7:0] = i[23:16]; // specify which bits to cause an arithmetic right shift.
// wire G[7:0] = i[31:24]; // specify which bits to cause an arithmetic right shift.
// wire H[7:0] = i[39:32]; // specify which bits to cause an arithmetic right shift.
// wire O[7:0] = i[47:40]; // specify which bits to cause an arithmetic right shift.
// wire P[7:0] = i[55:48]; // specify which bits to cause an arithmetic right shift.
endmodule
