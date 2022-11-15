// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
//When a=b=0, do nothing.

wire [4:0] c;
wire [4:0] out;

assign out = a[sel];

always @(posedge clk)
begin
  if (a[0] == 0)
  {
    if (sel == 0
        && a[2] == 0)
    {
      out = b[2];
      c = b[2];
    }
    else if (sel == 1
        && a[2] == 0)
    {
      out = b[2];
    }
  }
  else if (a[0] == 0)
  {
    if (sel == 0
        && a[2] == 0)
    {
      out = b[0];
      c = b[0];
    }
    else if (end
endmodule
