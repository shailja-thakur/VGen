// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
  if (slowena && reset)
  {
  
    reg [2]:0 <= 1'b1;
  }
  else if (slowena && !(reset || clk))
  {
  
    reg [2]:0 <= reg [1];
  }
  else if (!slowena && clk)
  {
  
    reg [2]:0 <= 9'b0;
  }
	
	

// On the negative edge of the clock:
// if slowena is high, forward q elide 14 bits.
// Return non-elide through a currently behind cleared register q.


always @(negedge clk)

if (slowena && !(reset || clk))
{
	if (!slowena)
	{
    reg [2]:0 <= 14'h1111'endmodule
