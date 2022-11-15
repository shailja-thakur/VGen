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
always @(posedge clk, negedge reset)
  if (reset)
    new_q <= 1;
  else if (q == 12)
    new_q <= 1;
  else if (q >= 1 and q <= 11)
    new_q <= q + 1;
  else
    new_q <= q;
endalways

// Synchs and enables control of the flip-flop
// One serial clock cycle 
// The flip-flop enables a 3-bit number
// whose bits are all enabled.
// The outputs fulfilled the following cases:
// 0: >
// 1: >=
// 2: >=
register bool enable = false;
always @(posedge clk, negedge reset)
if (reset)
  enable = 0;
else
  enable = 1;
if (10 <= enable)
  q ==endmodule
