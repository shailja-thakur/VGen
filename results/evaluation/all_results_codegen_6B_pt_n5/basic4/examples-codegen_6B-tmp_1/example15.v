// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always (sel or out == sel)
  index (a, b, out,
  mod 0 1'b1,
  sel 0'x4 
);
module mux2(
input [4:0] a, b,
input sel,
output [4:0] out,
input a2,
input b2,
input sel2,
output out2 );
// Same as mux, except input captures are passed through a pair low-high transistors.
always (sel or out2 == sel2)
  index (a2, b2, out2, 
  mod 0 1'b1, 
  sel 2'b0, 
   sel 0'x4'b1, 
   sel 1'x4'b0 
);
cpu_decode sel #(
  .A({0,endmodule
