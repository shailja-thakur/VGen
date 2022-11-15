// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The output q is given by the expression q = q + 1 mod 10.
// The output q is clocked on the falling edge of the clock.
always @(posedge clk or negedge reset)
    if (reset)
        q <= 0;
    else if (slowena)
        if (q < 9)
            q <= q + 1;

// On the positive edge of the ena input:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the clk input is high and q is not 9.
// The output q is given by the expression q = q + 1 mod 10.
// The output q is clocked on the falling edge of the clock.
always @(posedge ena or negedge clk or negedge reset)
    if (reset)
        q <= 0;
endmodule
