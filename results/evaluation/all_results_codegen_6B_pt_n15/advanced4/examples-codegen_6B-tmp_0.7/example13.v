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


// reg_a: 8 bit data
// reg_b: 8 bit data
// reg_c: 8 bit data
// reg_d: 8 bit data
// reg_e: 8 bit data
// reg_f: 8 bit data
// reg_g: 8 bit data
// reg_h: 8 bit data
// reg_i: 8 bit data
// reg_j: 8 bit data
// reg_k: 8 bit data
// reg_l: 8 bit data
// reg_m: 8 bit data
// reg_n: 8 bit data
// reg_o: 8 bit data
// reg_p: 8 bit data
// reg_q: 8 bit data
// reg_r: 8 bit data
// reg_s: 8 bit data
// reg_t: 8 bit data
// reg_u: 8 bit data
// reg_v: 8 bit data
//endmodule
