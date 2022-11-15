// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
wire sel_mux;
reg [4:0] out;

always @ (sel or sel or in0 or in1 or in2 or in3 or in4 or in5)

case(sel_mux)
	0 : out = in0;
	1 : out = in1;
	2 : out = in2;
	3 : out = in3;
	4 : out = in4;
	5 : out = in5;
	6 : out = in6;
	7 : out = in7;
	8 : out = in8;
	9 : out = in9;
	10: out = {in10, in11, in12, in13, in14, in15};
	11: out = in10;
	12: out = in11;
	13: out = in12;
	14:endmodule
