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


sig_reg<bool> shift_ena;
sig_reg<bool> shift_clk;
sig_reg<bool> shift_load;
sig_reg<bool> shift_load_ena;
reg shift_data_out; // output data to shift register
reg shift_data_in; // input data to shift register
reg shift_count; // shift register count
reg shift_mode; // shift register mode
reg shift_shift; // shift register shift amount
reg shift_load_shift; // shift register shift amount
reg shift_shift_ena; // shift register shift ena
reg shift_shift_out; // shift register output shift amount
reg shift_shift_in; // shift register input shift amount

// shift port
reg shift_clk_in;
reg shift_load_en;
reg shift_load_clk;
reg shift_endmodule
