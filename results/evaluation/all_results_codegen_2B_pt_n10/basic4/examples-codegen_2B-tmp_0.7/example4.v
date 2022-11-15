// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @ (mux_sel)
{
  always @ (a[sel])
  {
    out[sel] = a;
  }
  always @ (b[sel])
  {
    out[sel] = b;
  }
}

// Fine-grained input/output port assignment.
module mux2( 
input [4:0] a, b,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @ (mux2_sel)
{
  always @ (a[sel])
  {
    out[sel] = a;
  }
  always @ (b[sel])
  {
    out[sel] = b;
  }
}

// Fine-grained input/outputendmodule
