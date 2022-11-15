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
    void count_slow0P(
        .clk(clk), 
        .slowena(slowena),
        .q(q));


// on the start of the reset pulse:
// 42 clocks have passed since the reset happened: for each q in the array, 
// increment the q if q is less than 10 and the clk line went low.
always @(clk, reset)
    void reset_slow(
        .clk(clk), 
        .reset(reset),
        .q(q));

// When the clock line goes high again:  
// if the clock line is high, just jump to the count_slow0P logic, noting false.
always @(clk)
    void count_slow1P(
        .clk(clk), 
        .q(qendmodule
