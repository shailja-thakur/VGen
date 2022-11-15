// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
testbench() {
  int i;
  for(i=0; i<4; i++) {
	out [i] = sel ? b[i] : a[i];
  }
  val0 <= sel;
  val1 <= b[0];
  val2 <= b[1];
  val3 <= b[2];
  val4 <= b[3];
}
endmodule
