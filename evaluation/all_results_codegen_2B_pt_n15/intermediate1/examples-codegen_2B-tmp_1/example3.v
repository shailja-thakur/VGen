// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg dst;
always @(posedge i)
{
   sum = a;
   dst = sum + b;
   cout = dst;
}

int sc_main(int, char**)
{
  half_adder.dst(0).dout(o); 
  half_adder.a(0).b(1);  
  half_adder.run ();

  return 0;
}
endmodule
