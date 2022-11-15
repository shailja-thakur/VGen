// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the negative edge of the clock, reset q and increment q.
always @(posedge clk or posedge reset)
    if reset
        q <= 0;
    else
        if (ena) q <= q + 1;
    end
// On the negative edge of the slow enable, set the output q to 0.
// On the positive edge of the slow enable, set the output q to 0.
// The slow enable input is always low at reset.
always @(negedge slowena or posedge slowena)
    if (slowena) q <= 0;
    end

// On the positive edge of the clock, increment q and assert the output.
always @(posedge clk)
    q <= q + 1;
    if (q == 9) q <= 0;
    q;
end

always @(posedge clk or posedge reset)endmodule
