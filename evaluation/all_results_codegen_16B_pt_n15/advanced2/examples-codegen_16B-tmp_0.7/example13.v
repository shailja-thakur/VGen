// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Finally, q is incremented by 1 on each clock.
always @(posedge clk or 
    (reset && !slowena))
    begin
        if (reset)
            q <= 0;
        else if (slowena && q < 9)
            q <= q + 1;
    end

// On the negative edge of the clock:
// q is decremented by 1 on each clock.
always @(posedge clk or 
    (reset && !slowena))
    begin
        q <= q - 1;
    end

// On the positive edge of the slow clock:
// If reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Finally, q is incremented by 1 on each clock.
always @(posedge slowclk or endmodule
