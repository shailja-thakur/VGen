// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
wire selBar; 
not nt (selBar, sel);
and a1 (out[0], selBar, a[0]);
and a2 (out[1], selBar, a[1]);
and a3 (out[2], selBar, a[2]);
and a4 (out[3], selBar, a[3]);
and a5 (out[4], selBar, a[4]);
endmodule
