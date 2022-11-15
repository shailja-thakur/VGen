// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
initial begin
    if (slowena == 1'b0) {
        q = 0;
    } else if (clk_lo == 1'b0 || reset == 1'b0) {
        q = q + 1;
    }
end

// On the negative edge of the clock:
// if clk_lo is high, increment the output q.
// Otherwise, only increment the output q if the ena input is high and q is not 0.
initial begin
    if (clk_lo == 1'b0) {
    } else if (clk_hi == 1'b0 && slowena == 1'b0 && q == 0) {
        q = 1;
    } else if (clk_hi == 1'b1) {
        q = q + 1;
    }
end

// On the positive clock edge:
//endmodule
