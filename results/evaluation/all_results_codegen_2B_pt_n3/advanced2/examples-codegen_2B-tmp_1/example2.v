// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the other edge of the clock:
// if ena is high, increment the output q regardless of if q is 9
//         else, do nothing

always @(posedge clk)
    if (reset)
        q = 0;

    // "-2" because we're stepping through the register more than once.
    if (slowena)
        q[-2] = (q[-2] + 1) % 10;
show_count_slow("after reset");

if ((slowena) and (q != 9)) 
    q = q[-2];  // Increment the output.
else
    q = 0;
show_count_slow("after ena");

endmodule
