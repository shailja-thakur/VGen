// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The output should be one of the inputs, but when sel=0 or 1, the output can be either input.
always @(sel, a, b) 
case(sel)
1'b0: out <= a;
1'b1: out <= b;
endcase
endmodule
