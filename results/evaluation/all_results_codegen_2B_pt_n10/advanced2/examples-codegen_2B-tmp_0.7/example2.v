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
    if (slowena) {
        if (reset) {
            q[3:0] = 0;
        } else if (q[3:0] < 10) {
            q[3:0] = q[3:0] + 1;
        }
    }

always @(posedge clk)
    if (slowena) {
        if (reset) {
            if (q[3:0] == 9)
                q[3:0] = 0;
        } else if (q[3:0] == 0) {
            if (q[2:1] == 0)
                q[2:0] = 1;
            else if (q[2:1] == 1)
                q[2:0] = 2;
            else if (q[2:1] ==endmodule
