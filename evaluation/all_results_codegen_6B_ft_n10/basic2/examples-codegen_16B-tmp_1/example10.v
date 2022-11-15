// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 assign out = a & b;

 endmodulemodule Lab5Part1(SW, HEX0, KEY, LEDR, CLOCK_50);
	
	// variables
	input [1:0] KEY;
	input CLOCK_50;
	input [1:0] SW;
	output [6:0] HEX0;
	output [17:0] LEDR;
	
	
	// Instantiations
	wire CLOCK_50;
	assign OUT2 = OUT2_Depend;
	assign RADIO_output = OUT1_Depend;
	reg shift, clear, done;
	
	
	// module for performing modulus
	always @ (posedge CLOCK_50) shift <= ~clear;
	modulus (CLOCK_50, shift, clear, Q, RADIO_output);
	
	
endmodule
