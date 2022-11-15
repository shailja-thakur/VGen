// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// (wraps around at carry)
always @( posedge sel )
 begin
  if ( sel )
    if ( sel == 1 )
      a > out
    else
      b > out
  else
    out > 0;
 end
endmodule
