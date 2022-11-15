// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
module 
priority_encoder_b ( in bool bit, 
output [1:0] out ); 
priority_encoder_b = ( in ) ? logic_zero : priority_encoder( ( in ), pos );

// */


/*
// VHDL definition
// Decimal 150 
// Preliminary scan and decode FSM
module 
priority_encoder_2;

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
priority_encoder_1 priority_encoder_1 ( 
	input [2:0] in,
	output reg [1:0] pos ); 
// When sel=1, assign b to out
priority_encoder_2 priority_encoder_2_b ( in bool bit, 
	output [1:0] out ); 
priority_endmodule
