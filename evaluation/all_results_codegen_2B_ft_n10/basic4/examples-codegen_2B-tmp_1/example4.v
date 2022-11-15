// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
assign out=(~sel&a[0])|(sel&b[0]);
// if sel=0 then assign from a else from b.
// if sel=1 then assign from b else from a.
endmodule
