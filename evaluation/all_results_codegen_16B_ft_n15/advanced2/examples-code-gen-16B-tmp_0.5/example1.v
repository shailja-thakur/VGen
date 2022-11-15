// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// (if q is 9, then it will not increment even if ena is high).

// If slowena is high, then the counter should only increment every 10 clock cycles.

// You can use the following code to generate a 10MHz clock, and a slow clock that is 1/10th the speed.

// initial begin
//     clk = 0;
//     forever #5 clk = ~clk;
// end

// initial begin
//     slowclk = 0;
//     forever #50 slowclk = ~slowclk;
// end

// The slow clock is not available in the simulator, so you can use the following code to test your counter:

// initial begin
//     slowena = 0;
//     #100 slowena = 1;
//     #100 slowena = 0;
// end

endmodule
