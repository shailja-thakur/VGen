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


meter_en_w m_enable;

#pragma vector=ADV_SHIFT_CLK
interrut InterruptAdvance::_intrut; // For internal security where interrupts are removed by this component.

interrut InterruptAdvance::_interrut; // Save because it's not possible to bring intrusrut up
interrut InterruptAdvance::_int;

lb_clk lb_kick;
clock_t lb_kick_timer;
lb_led lb_led1;
lb_clk lb_kick2;
clock_t lb_timer_timer;

void advshift::begin(void) 
{
	y1=7; // LSB (enable upon p)
	x=0; // Start from 1-bit shift

	lb_kick2.pin=led2; // Set the led2end
endmodule
