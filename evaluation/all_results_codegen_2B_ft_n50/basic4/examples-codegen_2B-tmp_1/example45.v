// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// synthesis verilog_input_version verilog_2001
// altera message_off 10463



//synthesis_resources = mux 2 lpm_mux 6 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
(* ALTERA_ATTRIBUTE = {"LPM_CONSTANT=57600"} *)
module mux (
	dataa,
	datab,
	dataout,
	ine,
	sel);

	input	[3:0]	dataa;
	input	[3:0]	datab;
	output	[3:0]	dataout;
	input	dataout;
	input	ine;
	input	sel;

	wire [3:0] sub_wire0;
	wire sub_wire11 =endmodule
