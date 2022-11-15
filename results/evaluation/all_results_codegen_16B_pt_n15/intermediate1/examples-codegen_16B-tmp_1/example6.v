// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
       
// The computational logic.
module logic
 (
   input triple
	 , a, b, cout
  )
 {
  if (a == false)
   {
    	sum <= (b - (a[0])*2 - ((_252732) b, (_2531) cout))[0];
   	else if (b == false)
     	{
       		sum <= 0;
     	}
		else
		{
			sum <= (b - (a[0])*2 - ((_252673) b, (_25327) cout))[0];
		}	
    } 
  else
  {
	  if (b == false)
     	{
       		sum <= (a - (b, a[8])*2 - (((_152732) a, b), _10))[8];
     endmodule
