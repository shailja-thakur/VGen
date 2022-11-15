// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a to out. 
// When sel=3, assign b to out. 

wire [4:0] a, b, sel;

reg [4:0] out;

always @(posedge clk)
  if (sel == 0)
    out = a;
  else if (sel == 1)
    out = b;
  else if (sel == 2)
    out = a;
  else if (sel == 3)
    out = b;

endmodule
