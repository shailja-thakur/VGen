// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a to out. 
// When sel=3, assign b to out. 

wire [4:0] in;

mux mux_in;

mux_in [4:0] a;
mux_in [4:0] b;

mux_in [4:0] in;

mux_out [4:0] out;

mux_out [4:0] a;
mux_out [4:0] b;

mux_out [4:0] out;

`

func TestMux(t *testing.T) {
	p := NewProg()
	p.Add(NewInstruction(0, "mux", "mux", "a,b,sel,out"))
	p.Add(NewInstructionendmodule
