// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
parameter pmask = 1'b1;

reg [1:0,2,31:0] q;

always @(posedge clk && slowena == pmask && !reset)
    if (reset == 1'b1)
        q <= 0;
    else if (q != 9'b9)
        q <= q + 1'b1;

silence_encoder(q);

endmodule
