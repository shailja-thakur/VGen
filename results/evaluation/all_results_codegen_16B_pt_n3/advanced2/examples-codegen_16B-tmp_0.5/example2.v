// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or (reset and not(slowena))) begin
    if (reset) q <= 0;
    else if (slowena) q <= 9 - q;
end

// On the positive edge of the slowena:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge slowena or (reset and not(slowena))) begin
    if (reset) q <= 0;
    else if (slowena) q <= 9 - q;
end

// On the positive edge of the ena:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge ena or (reset andendmodule
