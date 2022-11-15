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


reg Q;
reg FSHIFT; // shift register (int64)
reg LSHIFT; // shift register (int64)


initial begin
// Instantiate clocks, regs, and interfaces.
// Set asynch signals and generate conversion times.
reg clk_period = 11;
reg [1:0] clk_step = 0;
//2012_6_29 17:00
inputs clk_i;
inputs load_i;
inputs ena_i;
input  clk_p_i;
inputs clk_s_i;
reg [0:0] q_out_i;


__reg q_out = 0;
__reg q_load = 0;
__reg q_ena = 0;

always @posedge clk_i or clk_p_i
begin

q_out_end
end
endmodule
