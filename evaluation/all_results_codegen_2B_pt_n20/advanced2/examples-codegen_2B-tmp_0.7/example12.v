// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(clk)
    if (slowena)                             // if slowena is high and q is less than 9,
        q <= (q + 1);                       // shift q down by 1 and increment it
    else if (slowena == 0 &&  q < 10)       // if slowena is low and q is less than 10,
        q <= (q + 1);                       // shift q down by 1 and increment it
endmodule
