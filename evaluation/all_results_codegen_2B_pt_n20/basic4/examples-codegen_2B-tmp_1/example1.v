// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

sig i()
{
  nilled = a;
  frac = ~a;
  reader1r = frac >> 2;
  reader2m = frec >> 2;
}

sig j(), I()
{
  nilled = b;
  frac = ~b;
  arch = frac >> 2;
}

sig o()
{
  o1 = out(1);
  o2 = out(2);
  o3 = out(3);
}

wire [4:0] ina = d
  {
  {in1pin, ina[1]},
  {~in1pin, ina[2]},
  {~in1pin, ina[3]},
  {~in1pin, ina[4]}
  }

endmodule
