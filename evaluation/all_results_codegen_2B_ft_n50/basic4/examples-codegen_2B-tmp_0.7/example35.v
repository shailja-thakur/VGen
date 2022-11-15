// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
not (seln,sel);
and (w1,seln,a[4]);
and (w2,sel,b[4]);
or (out[4],w1,w2);
endmodule
