// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

net clk IN;
// Initially assume that a=1.

for Coordinate x in {0, 1}
  always #(1 << Coordinate) = 1;

wire
  Sub[0]1 = a[1] & b[1],
  Sub[1]1 = a[2] & b[2],
  Sub[2]1 = a[3] & b[3],
  Sub[3]1 = a[0] & b[0];
wire
  Sub[0]0 = a[2] & b[1],
  Sub[1]0 = a[2] & b[3],
  Sub[2]0 = a[1] & b[3],
  Sub[3]0 = a[0] & b[1];
wire
  Output[0] = a[0];
  Output[endmodule
