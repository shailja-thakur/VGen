// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The sel bit can be thought of as an input selector.
// It chooses between the values of a and b. 
// sel=0 chooses a, and sel=1 chooses b. 
// The output, out, is the output of the mux. 
// The values of a and b are both assigned to out when 
// the sel bit is 0. 
assign out = sel ? b : a; 
endmodule
