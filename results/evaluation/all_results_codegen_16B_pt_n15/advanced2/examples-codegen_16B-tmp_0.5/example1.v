// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset) begin
    if (reset)
        q <= 0;
    else
        if (slowena)
            if (q < 9)
                q <= q + 1;
end

// On the negative edge of the clock:
// if reset is high, reset the output q to 9. 
// Otherwise, decrement the output q if the ena input is high and q is not 0.

always @(posedge clk or negedge reset) begin
    if (reset)
        q <= 9;
    else
        if (slowena)
            if (q > 0)
                q <= q - 1;
end

// On the positive edge of the ena input:
// increment the output q if the clk input is high.
// Reset the output q to 0 if the clk input isendmodule
