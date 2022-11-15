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
  q <= (reg[3]? 1 : (reg[2]? 12 : (q + 1)));

// This is an event-driven counter that counts from 1 to 12. 
// The counter is reset to 1 on the positive edge of the clock. 
// The counter increments by 1 on the positive edge of the clock. 
module event_counter(
    input clk,
    input reset,
    output reg [3:0] q
);
  always @(posedge clk)
    q <= (reg[3]? 1 : (reg[2]? 12 : (q + 1)));

// This is a counter that counts from 1 to 12. 
// The counter is reset to 1 on the positive edge of the clock. 
// The counter increments by 1 on the positive edge of the clock. 
//endmodule
