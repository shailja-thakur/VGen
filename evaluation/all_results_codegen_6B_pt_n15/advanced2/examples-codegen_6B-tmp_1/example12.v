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
    if (slowena || reset) q[0] <= 0;
    else if (slowena && q[0] == 9) q[0] <= 0;
    else q[0] <= 1 + (~slowena && q[0] < 9);

// On the negative edge of the clock:
// if reset is high and the output q is 0, it is set to 9.
// Otherwise, the output q is clamped to 0 if it is not 9.
always @(negedge clk)
    if (slowena && q[0] == 0) q[0] <= 9;
    else q[0] <= ~slowena && q[0] != 9;
endmodule
