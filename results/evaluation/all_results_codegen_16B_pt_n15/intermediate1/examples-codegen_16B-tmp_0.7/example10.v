// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
reg[0:1] sum;
reg[0:1] cout;
reg [0:1] a, b;
always @( posedge a or posedge b ) begin
  if( a ) sum <= #SUM_SEL;
  if( b ) sum <= #SUM_SEL;
  // set the sum bit, and carry-out
  if( a and b ) sum <= #SUM_SEL;
  else if( a ) sum <= #SUM_SEL;
  else if( b ) sum <= #SUM_SEL;
  cout <= sum;
end
endmodule
