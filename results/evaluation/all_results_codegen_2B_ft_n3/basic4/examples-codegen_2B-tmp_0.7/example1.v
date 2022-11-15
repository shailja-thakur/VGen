// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Create a 4bit wide mux that will
// select a or b depending on sel
// and also set the output of the
// multiplexer to the selected value.
//
// For mux(a, b, c, d, f, sel, out)
// assign out = (sel == 0) ? a : b;
// sel = 0 -> a
// sel = 1 -> b
//
// For mux(a, b, c, d, f, sel, out)
// assign out = (sel == 0) ? b : a;
// sel = 0 -> b
// sel = 1 -> a
//
// For mux(a, b, c, d, f, sel, out)
// assign out = (sel == 0) ? c : d;
// sel = 0 -> c
// sel =endmodule
