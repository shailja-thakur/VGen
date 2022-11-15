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
    // If slowena is high:
    // If reset is high:
    // If q is 0: increment q by 1
    // else: skip and stay at the current value
    if (slowena)
        if (reset) {
            q <= 0;
        } else {
            if (!q) {
                q = 1;
            }
        }
    // Otherwise:
    // If reset is high:
    // If q is 9: increment q by 1
    // else: skip and stay at the current value
    else
        if (reset) {
            if (q == 9) {
                q = 1;
            }
        } else {
            if (q != 9) {
                q += 1;
            }
        }
endmodule
