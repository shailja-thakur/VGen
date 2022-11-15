// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk|negedge reset)
    if(reset)
        q <= 0;
    
    else if(!#(slowena))
        q <= q + 1;
        
    else if(q != 9) 
        q <= q + 1;

// On the negative edge of the clock:
// reset the ouptut q to 0

always @(posedge clk|negedge reset)
    q <= 0;

// On the negative edge of the enable input:
// only decrement the output q if the en input is low and q is not 0

always @(posedge slowena|negedge ena)
    if(ena && q > 0)
        q <= q - 1;

// Design a decade counter whereby each bit is denoted as "on" or 
// "off", with fewerendmodule
