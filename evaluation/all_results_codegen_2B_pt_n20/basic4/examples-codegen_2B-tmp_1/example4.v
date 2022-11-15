// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

assign { out[3] = a[3]; a[3] = a[2]; }
assign { out[2] = a[2]; a[2] = a[1]; }
assign { out[1] = a[1]; a[1] = a[0]; }
endmodule
