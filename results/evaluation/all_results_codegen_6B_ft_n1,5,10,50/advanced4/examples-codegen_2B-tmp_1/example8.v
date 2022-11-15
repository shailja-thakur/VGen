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


`definitely false because we are assuming 32-bit clock here, which is hard to test.
C = BIT(clk,8)
D = BIT(load, 127)
L = C ^ D
LA = ?
SLB = LEVEL(mode_clock)
ST = ?
ENB = EN
IN = CARRY(1 << address_idr)
OUT = ZERO(address_idr)

inst: impl
temp = IN ? (IN ? (L ? [~OUT]^gain(8(load_16(qi_shift()))), result8(qi_shift()), line(load_lane()), i_load(pr[i], outer)) : (IN ? (L ? [~OUT]^gain(8(load_64(qi_shift())^load_lane()^load_16(qi_shift()))), result(qi_shift()endmodule
