// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The mux(a,b,sel) module takes in inputs a and b.
// The output out is then the mux for sel.
// When the mux is used, it can be assigned to multiple inputs.
// Multiple inputs can be assigned to a single output.
// mux sthe mux to take in a and b and select which input to assign to out.
// mux can take in a and b and select either of them.
// For b, the output is assigned to the output of the mux.
// For a, the output of the mux is assigned to the output.
assign out = (sel) ? b : a;
endmodule
