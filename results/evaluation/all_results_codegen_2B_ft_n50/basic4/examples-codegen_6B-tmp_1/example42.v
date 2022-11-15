// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
 not(seln, sel);
 and(outn, a[0], seln);
 and(out[0], a[1], seln);
 and(out[1], a[2], seln);
 and(out[2], a[3], seln);
 and(out[3], a[4], seln);
 and(out[4], b[0], seln);
 and(out[5], b[1], seln);
 and(out[6], b[2], seln);
 and(out[7], b[3], seln);
 and(out[8], b[4], seln);
endmodule
