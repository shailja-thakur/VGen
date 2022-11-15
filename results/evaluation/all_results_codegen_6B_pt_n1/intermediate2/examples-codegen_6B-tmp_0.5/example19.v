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
  q <= (reset ? 3'b000 : (q == 12 ? 3'b001 : q + 1));

// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 1, assign q to 1
// else, increment q by 1 
always @(posedge clk)
  q <= (reset ? 3'b000 : (q == 1 ? 3'b001 : q + 1));

// This is a counter that counts from 1 to 13
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); endmodule
