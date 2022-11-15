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


/////////////////////
// Inputs
new_clk_i(asr, clk);
new_load_i(asr, load);
new_ena_i(asr, ena);
new_sa_i(asr, amount);
new_sd_i(asr, data);
new_q_o(asr, q);


//////////////////////
// Outputs
assign asr.ena.next = (~(old_ena_o(asr) | ena)) & (~(ena & ~asr.md)) & (~(~asr.sa & asr.ena));
assign asr.md = load * 1'b0;
assign asr.sa = ! ena & amount == 0b00;
assign q_o = (asr.ena & ~asr.sa) | (asr.enaendmodule
