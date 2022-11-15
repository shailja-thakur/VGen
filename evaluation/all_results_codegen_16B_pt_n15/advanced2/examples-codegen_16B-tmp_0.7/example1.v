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
    if (reset) q <= 0;
    else if (slowena && q != 9) q <= q + 1;

// On the positive edge of the slowena signal:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if q is less than 9.

always @(negedge slowena or posedge reset)
    if (reset) q <= 0;
    else if (q < 9) q <= q + 1;

// When the slowena input changes from low to high: reset the output q to 0.

always @(posedge slowena) begin
    if (slowena) q <= 0;
end

// When the clk input changes from low to high: drive the output q down by 1.

always @(negedendmodule
