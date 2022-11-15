// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=0|2, assign a to a. 
//When sel=0|2|4, select a.
// When sel=0|2|4|8, select a.
//When sel=0|2|4|8|16, four selectable outputs.

wire [6:0] onp, ofp;

wire [3:1] idx = (8&a);    
reg [5:0] dest, cnt;

mux_s mux1 = (
mux(a[7], 0b01)

or
mux(a[6:5], 0b10)

or
mux(a[4:3], 0b11)
);

wire [0:3] b[n+1:0];
 
always @ (mux_s)
beginend
endmodule
