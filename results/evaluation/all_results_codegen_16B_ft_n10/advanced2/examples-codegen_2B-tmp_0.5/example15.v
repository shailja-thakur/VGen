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
            q = 0;
        } else if ((q < 9) && (ena)) {
            q++;
        }
    }

// On the negative edge of the clock:
// if reset is high, reset the output q to 0.
// Otherwise, only increment the output q if the ena input is high and q is not 0.
always @(negedge clk) 
    if (slowena) {
        if (reset) {
            q = 0;
        } else if ((q > 0) && (ena)) {
            q--;
        }
    }

endmodule
