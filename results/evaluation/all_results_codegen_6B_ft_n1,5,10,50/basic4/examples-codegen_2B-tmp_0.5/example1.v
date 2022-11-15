// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a to out. 
// When sel=3, assign b to out. 
assign out[4:0] = 
  (a[3] ? b[3] : a[2]) + 
  (a[1] ? b[1] : a[0]) + 
  (a[0] ? b[0] : a[1]) + 
  (a[2] ? b[2] : a[3]) + 
  (a[3] ? b[3] : a[3]);
endmodule
