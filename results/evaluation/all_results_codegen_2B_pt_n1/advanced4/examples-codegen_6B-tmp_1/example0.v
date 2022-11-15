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


module adc async_ram2adc(input clk,
					input ADC_sam,
					input CAPTURE_port,
					output TA_min,
					output CAPTURE_max,
					input ADC_en,
					output adout);

module adc1(): advshift(clk<2> >, load<2> >, ena<2> >, [7:0] < );

module 
adc1_ref(): advshift(clk<2> >, load<2> >, ena<2> >, [15:0]< );

// we want this ref for ADC samples for electrical measurements.
module sh128(input clk,
			input load,
			input ena,
			[63:0] reg); 

module intr(input clk,
			input load,
			input enendmodule
