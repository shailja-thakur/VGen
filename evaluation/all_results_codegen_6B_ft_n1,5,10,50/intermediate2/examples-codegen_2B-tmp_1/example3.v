// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
void main()
{
  while (1)
    {
      if (reset != 1)
        {
        if (q[3] == 12)
            emit wait;
      if (clk == 1)
          q[3] = 1;
      else
          q[3]  = q[3] + 1;      
      }
     else reset = 0;
    }
} 
endmodule
