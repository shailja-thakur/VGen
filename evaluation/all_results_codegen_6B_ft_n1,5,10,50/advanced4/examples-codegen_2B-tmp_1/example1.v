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


wire data_sel;  // SAPT can't do 8-shift right, left, or 1-shift exactly. So we'll keep track of the way to go.  
q_sap_synchr shifter;

assign shifter[sixteen] = (load to shifter) always | (ena 1 to shifter) [1'b0];
// shift left for 1-shift right.
assign shift_decode[sixteen] = (load to shifter) always | (ena 1 to shifter) [1'b1];
// shift right for 1-shift right.
assign sum_len [sixteen] = (ena to shifter) [1'b1];   // change only the ena state of the shifter to sum_len.
assign data_load (load to shifter) [63:0];
// load data and jars in shifendmodule
