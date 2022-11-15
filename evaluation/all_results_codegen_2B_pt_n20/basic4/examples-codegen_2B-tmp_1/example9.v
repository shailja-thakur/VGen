// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Physical semantics: sel signals an inversion-state for every three
// bits of a. 
always @(not a[3]) begin
  sel <= 1;
  if (not b[3]) b <= invert(if (sel == 0 at 0) out else aout);
  if (not b[0] and not b[1] and not b[2] and not b[3]) sel <= 0;
end

// Ivy semantics: "the bitwise inverse of sel, mod 4, inverts the state of the input."
always @(not a[3]) begin
  sel <= 1;
  if (not b[0]) b <= if (sel == 0 at 0) out else aout;
end

// Communication -- always aplies to one of the inverts
wire aout [9:0];
wire sout [4endmodule
