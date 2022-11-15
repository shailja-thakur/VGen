// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Otherwise, leave q unchanged.

// On the negative edge of the clock, if the ena input is high, decrement the output q.
// If q reaches 0, set q to 9 (i.e. wrap around to 0).

always @(posedge clk)
 if(reset) q <= 0;
 else if(slowena)
 if(q == 9) q <= 0;
 else if(q != 9) q <= q + 1;

endmodule
