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


-- To reset register: clk toggle, then clear it.
-- To synchronize load, invert clk.
-- To write data: write_data
-- To read data: r <= any bits of debug_data; r <= any bits of q.


reg r;
reg debug_y_bit;
reg debug_x_bit;
signal clk;
signal ena;
signal load_y;
signal load_x;
signal debug_bit;
signal debug_q_bit;

function write_data(int data) {
	r <= data_carry(data); 
	if(ena)r <= data << amount;
}

function advshift_interrupt()
group loads = {load_x, load_y, debug_y_bit, debug_x_bit};
group leaks = {debug_bit, debugendmodule
