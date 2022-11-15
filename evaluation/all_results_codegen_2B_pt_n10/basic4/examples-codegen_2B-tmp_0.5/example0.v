// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a to out. 
// When sel=3, assign b to out. 

reg [4:0] a;
reg [4:0] b;
reg [4:0] out;

always @(posedge clk)
  if (a[sel] == 0)
    out = a;
  else if (a[sel] == 1)
    out = b;
  else if (b[sel] == 0)
    out = a;
  else if (b[sel] == 1)
    out = b;
endmodule
