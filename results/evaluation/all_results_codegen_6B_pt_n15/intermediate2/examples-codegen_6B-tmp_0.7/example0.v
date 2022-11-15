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
always @(posedge clk)
  q <= (reg[2] ? 1 : (reg[1] ? 12 : (reg[0] + 1)));

// This is a counter that counts from 1 to 12. This counter is independent from the counter in the previous example.
module counter_independent( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk)
  q <= (reg[2] ? 1 : (reg[1] ? 12 : (reg[0] + 1)));

// This counter increments every five seconds.
// This counter is independent from the counter in theendmodule
