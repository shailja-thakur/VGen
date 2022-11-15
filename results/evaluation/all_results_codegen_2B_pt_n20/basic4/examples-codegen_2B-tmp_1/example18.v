// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign anand(a,b) to out. 

mux
assign out[4:0] = if(sel.v==0, a, b);
assign out<3, 4> = out>=15       => 0;
assign out<4, 4> = out>=16       => 0;

wire sel2, a2, b2, out2;

// design an 8-to-8 multiplexer
module mux2( 
input [8:0] a, b, 
input sel2,
output [8:0] out );


mux2
assign [8:0] out[8:0] = if(sel2.v==0, a, b);

assign out<6, 5> = out>=80       => 0;
assignendmodule
