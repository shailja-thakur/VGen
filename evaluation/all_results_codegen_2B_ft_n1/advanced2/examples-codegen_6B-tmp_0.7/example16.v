// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the negative edge of the clock, count down the output q if the ena input is high and q is not 0.
// On the negative edge of the clock again, reset the output q.

always@(posedge clk)
    q <= (slowena ? (posedge(reset) ? 0 : q[3:0]) : q[3:0] < 0 ? q[3:0] + 10 : q[3:0] - 1);

endmodule
