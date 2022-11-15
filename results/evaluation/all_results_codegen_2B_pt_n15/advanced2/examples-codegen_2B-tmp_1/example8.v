// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
    if ($reset neq 0) q[9] <= 0;  // That is, when reset is active and ena is low, output q should be reset.

    if (slowena != 1) {
        if ($rafneq == 1 && $en >= 1) q[9]++; // $en and slow clk disable sync
        if ($upmwdneq == 1 && $upmwd_count < 30) q[9]++; // Clip never decreases
        if ($upmwd_limit_clrneq == 1) q[9]++; // Ignore CLR if low sensitivity of on-time decision
        if ($upm0 == 1 && $t < 1968) q[9]++; // Ignore a real signal mid24h start time
    }

// On the negative edge of the clock:
    if ($rafneq ==endmodule
