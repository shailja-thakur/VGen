// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// Assume that the assignment process is initiated by the positive clock 
// edge.
// Let F a [4:0] -(&gt; F out) means register a is assigned to register out.
// Please use a wizard to generate the hardware of the multiplexer.
always@ (posedge clk) begin              &lt;=======================
if (sel==1) 
F a [4:0] -(&gt; F out);
else
F b [4:0] -(&gt; F out);
end
endmodule
