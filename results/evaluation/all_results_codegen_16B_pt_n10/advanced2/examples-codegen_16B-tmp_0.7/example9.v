// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset)
    if (reset or not (slowena and q[2]))
        q <= 0;
    else if (slowena and q != 9)
        q <= q + 1;

// The clock is always positive. 
// The reset pin is positive only when reset is high.
// The ena input is positive only when ena is high.

// The ena input of the decade counter is an asynchronous clock.

// The clock is asynchronous to the decade counter output.
// The decade counter starts counting from a state that depends on the
// state of the ena input on the first rising edge of the clock.

// The decade counter is self-clearing.
// The decade counter is not affected by the reset pin. 
// The decade counter is not affected by the ena input.

// The decade counter isendmodule
