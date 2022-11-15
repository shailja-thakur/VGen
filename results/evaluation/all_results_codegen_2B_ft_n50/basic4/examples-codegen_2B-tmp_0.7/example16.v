// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// assign out = sel ? a : b;

// OR
// assign out = sel ? a | b : a;

// OR
// assign out = ( sel ? a | b : a ) | b;

// AND
// assign out = sel ? a & b : a;

// AND
// assign out = ( sel ? a & b : a ) & b;

// NOT
// assign out = sel ? a ~^ b : a;

// NOT
// assign out = ( sel ? a ~^ b : a ) ~^ b;

// NOR
// assign out = sel ? ~a | b : ~a;

// NOR
// assign out = ( sel ? ~a | b : ~a ) + ( a | b );

// NAND
// assign out = sel ? ~a & b :endmodule
