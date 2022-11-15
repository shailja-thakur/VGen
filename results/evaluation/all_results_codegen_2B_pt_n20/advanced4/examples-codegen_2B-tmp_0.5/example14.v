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


//#include <avr/io.h>
//#include <util/delay.h>
#include <avr/interrupt.h>

#define shift_left 1
#define shift_right 0

//#define shift_left_1 1
//#define shift_left_8 1
//#define shift_right_1 1
//#define shift_right_8 1

void init_shift_register(void){
	// Set up shift register
	//q = 0x00000000;
	//q = 0x00000000;
	q = 0x00000000;

	// Enable shift register
	ena = 1;
	//ena = 1;
	//ena = 1;

	// Enable shift register interrupt
	//sei();

	// Set up shift register interrupt
	//attachInterrupt(1, shift_register_interrupt, CHANGE);endmodule
