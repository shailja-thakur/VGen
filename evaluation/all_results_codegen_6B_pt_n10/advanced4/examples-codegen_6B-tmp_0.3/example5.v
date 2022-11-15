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


module main(input clk,
input clk_enable,
input [63:0] data,
input [63:0] shift_data,
output reg [63:0] q,
input [1:0] load_ena,
input [1:0] shift_ena,
input [1:0] shift_amount,
input [1:0] shift_amount_ena,
input [1:0] shift_amount_enb);

// The shift register is loaded with data[63:0] when load_ena is high.
// The shift register is shifted by shift_amount when shift_ena is high.
// shift_amount_ena is high when shift_amount_enb is high.
// shift_amount_enb is high when shift_amount_ena is high.
// shift_amount_enb is low when shift_amount_ena isendmodule
