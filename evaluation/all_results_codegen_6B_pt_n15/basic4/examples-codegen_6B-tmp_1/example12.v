// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst)
  if ( rst )
   out[3:0] <= 0;
  else if(sel == 0)
    out[3:0] <= a[3:0];
  else
    out[3:0] <= b[3:0];
endmodule
