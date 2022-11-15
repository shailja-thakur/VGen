// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign nothing to out. 
wire [3:0] in1, in2, in3;
format [1:0] F;
func ft() returns (out1, out2, out3) {
	if(in1 = veor(sel, b)) {
		in2 = veor(sel, a);
		in3 = veor(sel, a);
	} else if(in2 = veor(sel, a)) {
		in1 = veor(sel, b);
		in3 = veor(sel, a);
	} else if(in3 = veor(sel, a)) {
		in1 = veor(sel, b);
		in2 = veor(sel, b);
	} else {  // rounding, no tie
  	    //out[0] = b;endmodule
