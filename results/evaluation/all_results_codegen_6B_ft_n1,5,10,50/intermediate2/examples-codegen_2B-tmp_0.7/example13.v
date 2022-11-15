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

// IMPORTANT:
// There is no explicit RST or NRESET pin for the counter. Instead,
// we use the bit [3:0] of the clk input to mark the reset states.

// IMPORTANT:
// The counter counter is a 16-bit counter. It is initialized to 0xff.

begin 
  counter.q <= 0;

  // The clock is a 50 MHz / 2 / 4096 clock. This gives us a period of
  // 267.5 ns. So, we have to divide this period by 16 to get the
  // correct period for the counter.
  counter.q <= 10;

  if ( reset == 1'b1 )
  {
    counter.q <= 12;
  }
  else if ( counter.q == 12 )
  {
    counter.q <= 1;
  }
  else
  {end
endmodule
