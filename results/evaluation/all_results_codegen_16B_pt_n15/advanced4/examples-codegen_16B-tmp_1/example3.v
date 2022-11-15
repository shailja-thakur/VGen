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


assign  s   = {(1?{en:2,reg: data[63:62], input_values:[0:0]},
{reg: data[61:56],output_enable: ena,output_val: data[55:]+data[57:]})};
assign  r   = {(1?{en: 2, reg:data[61:52], input_values:[64:64]},
{ reg:data[51:48],output_val: clk.or_unique(ena,data[47:48]{por(data[47:{dn}],load)}})};
assign  la  = {en,r: iff(ena, data[63:0] ,{output_val:0}),s: iff(ena,data[63:0]:{output_val:0})};


script
        endmodule
