// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(posedge clk) begin
  if (a==0) out[0] = b;
  else if (a==1)
    out[0] = b;
  else if (a==2)
    out[1] = b;
  else if (a==3)
    out[2] = b;
  else if (a==4)
    out[3] = b;
  else if (a==5)
    out[4] = b;
  else if (a==6)
    out[5] = b;
  else if (a==7)
    out[6] = b;
  else if (a==8)
    out[7] = b;
  else if (a==9)
    out[8] = b;
  else if (a==10)
    outend
endmodule
