// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
not #(5) n (sel,w);
and g1(w[0], a[0], sel);
and g2(w[2], a[1], sel);
and g3(w[4], b[1], w[0]);
and g4(w[5], b[2], w[2]);
and g5(w[1], b[3], sel);
or g6(out[0], w[1], w[4]);
or g7(out[1], w[2], w[5]);
or g8(out[2], w[1], w[2]); 
or g9(out[3], w[5], w[3]);
or g10(out[4], w[4], w[3]);
endmodule
