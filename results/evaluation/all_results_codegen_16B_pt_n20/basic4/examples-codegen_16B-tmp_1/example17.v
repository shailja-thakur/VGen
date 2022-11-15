// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
mux01() begin
  var temp = 0;
  temp = 0 : sel = 0,  a : out;
  temp = 1 : sel = 1,  b : out;
end
endmodule
