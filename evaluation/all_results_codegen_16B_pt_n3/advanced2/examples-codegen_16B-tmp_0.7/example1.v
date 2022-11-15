// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the negative edge of the clock, only decrement the output q if the ena input is high and q is not 0.
// In all cases, store the output q in the register.
always @(posedge clk or negedge reset)
    if (reset)
        q <= {0, 1, 2};
    else if (slowena && q != 9)
        q <= q + 1;
    else if (slowena && q == 9)
        q <= 12;
    else if (slowena && q != 0)
        q <= q - 1;

// In the decade output, the high bit is the decade input,
// the low three bits are the output.
assign [3:0] q = {q[0], q[1], q[2]};

endmodule
