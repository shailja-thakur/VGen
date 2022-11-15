// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// NOTE: disallow ena to change on slower clock.
assign q = {3'b000, q'b0}
    + reset 
    | [(clk == '1') & slowena
      & (q / 10'h3 == 9'b01) & ~(enabclk/16 == 1'b0) & ~enabclk];

endmodule
