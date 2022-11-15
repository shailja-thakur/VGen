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


// 32-bit operations are not done in ringing out.
//   The most significant bit is assumed to be for wrapping around.
//   e.g. a[31:0] are way too high, and in the higher number.

always{q == 32768'h0;}
always {if(!ena) q = 32'h0;}
always {if(!ena) q = 32'h0}

#2 regslw(clk, ena, wr, rd, dat, q)
regslw #5 rd, dat, ena, 'b0 rd, clk, ena, dat, q
#3 regslr(clk, ena, wr, rd, dat, q)
regslr #5 rd, dat, ena, 'b0 rd, clk, ena, dat, q

#endmodule
