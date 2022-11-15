// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The incrementing counter is used to increment the output so that the
// output is low.
reg [3:0] count;

// The counter's bits so that the output is tri-state
// to -1. 
always@(posedge clk, posedge reset)
    if(reset)
        count <= 0;
    else
        count <= count + 1;

// The output is tri-state
assign q = count;

endmodule
