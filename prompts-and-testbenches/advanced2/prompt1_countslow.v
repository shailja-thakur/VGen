// This is a decade counter that counts from 0 through 9, inclusive. It counts only when slowena is high.
module count_slow(input clk, input slowena, input reset, output reg [3:0] q);