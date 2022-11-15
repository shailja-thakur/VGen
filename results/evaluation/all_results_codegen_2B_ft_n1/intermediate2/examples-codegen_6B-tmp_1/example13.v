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
//q <= r'[q & 0b000] & (r & 0b111);
//q <= (r & 0b111);
//q <= 1;
//q <= r ' q & 0b111;
//q <= 1'q & 0b111;
//q <= 1;

counter(clk, reset, q);



// This is a toggle_flip_flip that is controlled
// by a hardware toggle flip prerequisite gate.
// Performs a toggle flip when internal reset
// happens or the flip in the flip flip gate is one.
counter tapcounter(
    input clk,
    input reset,
    output reg r
); 

always @(posedge clk)
reg [15:0] twst ;

// Toggle flip through a toggle flip-flip gate.
// Only oneendmodule
