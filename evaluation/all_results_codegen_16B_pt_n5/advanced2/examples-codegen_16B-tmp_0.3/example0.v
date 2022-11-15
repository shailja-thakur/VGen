// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset)
    if (reset)
        q <= 0;
    else if (slowena && q < 9)
        q <= q + 1;

// On the positive edge of the slow enable input:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge slowena or negedge reset)
    if (reset)
        q <= 0;
    else if (slowena && q < 9)
        q <= q + 1;

// On the positive edge of the reset input:
// reset the output q to 0.

always @(posedge reset or negedge clk)
    q <= 0;

endmodule
