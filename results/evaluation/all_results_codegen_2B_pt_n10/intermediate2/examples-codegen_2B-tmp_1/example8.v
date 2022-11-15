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
void main (void)
{
  if(clk == 1) {
      if(reset == 1) q = 0b011111;
      else if(q == 12) q = 0b011111;
      else q++;
  }
  
  // no explicit BUSY: send last value 
  $display(q);  
  wait();
  // no explicit BUSY: send clock pulse to LCD controller 
  wait(clk == 1);
}
endmodule
