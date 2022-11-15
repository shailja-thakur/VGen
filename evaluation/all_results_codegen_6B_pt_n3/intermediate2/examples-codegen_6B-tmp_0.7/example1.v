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
always @(posedge clk or negedge reset)
  q <= (reg[1] | reg[0] | reg[2]);

// counter is a 3-bit counter that counts from 1 to 8.
module cnt1(
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk or negedge reset)
  q <= (reg[1] | reg[0] | reg[2]);

// counter is a 3-bit counter that counts from 1 to 8.
module cnt2(
    input clk,
    input reset,
    output reg [3:endmodule
