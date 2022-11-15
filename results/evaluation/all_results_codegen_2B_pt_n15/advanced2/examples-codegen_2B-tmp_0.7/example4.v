// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The ena input is high if the reset input is high.
// The clock is low if the reset input is high and the ena input is low.

always @(posedge clk)
    int i;
    int x = 0;
    // always @(posedge clk)
    begin
        // if reset is high, reset the output q to 0. 
        if (reset) q = 0;
        // Otherwise, only increment the output q if the ena input is high and q is not 9.
        else if (ena) q = (q + 1) % 10;
    end
    begin
        // the clock is low if the reset input is high and the ena input is low.
        if (!reset && !ena) x = 1;
    end
end

// In the negative edge of the clock:
// if the ena input isendmodule
