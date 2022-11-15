// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// in1 & in2 are the select lines.
// in3 & in4 are the data inputs
// The output is stored in out.
// For each input line, one MUX is created. Each MUX
// is given a unique name. The MUX in turn has one input
// and one output.
assign out = sel ? b : a;
endmodule
