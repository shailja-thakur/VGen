// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the negative edge of the clock, set q to 9.

always @(posedge clk or negedge reset) begin
    if (reset) q <= {0, 1, 2};
    else if (slowena) {
        if (q < 9) q <= q + 1;
    } else {
        q <= 9;
    }
end

// On the falling edge of the slowena input, reset the output q to 0.
// On the rising edge of the slowena input, only increment the output q if the ena input is high and q is not 9.

always @(posedge slowena or negedge slowena) begin
    if (slowena) q <= {0, 1, 2};
    else if (q < 9) q <= q + 1;
end

// On the rising edge of the ena input, reset the outputendmodule
