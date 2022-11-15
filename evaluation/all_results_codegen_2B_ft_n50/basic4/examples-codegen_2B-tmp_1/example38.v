// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
not #(5) nsel(sel, out_not_sel);
and #(5) an(a, sel, out_not_sel);
and #(5) bn(b, out_not_sel, sel);
endmodule
