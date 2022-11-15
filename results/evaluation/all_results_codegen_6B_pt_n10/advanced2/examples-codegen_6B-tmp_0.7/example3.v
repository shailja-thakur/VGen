// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The count is a 9-bit value with the least significant bit always zero.

always @(posedge clk)
    begin
        if (reset == '1' && slowena == '1') q <= 0;
        else if (slowena == '1' && q != 9) q <= q + 1;
        else if (slowena == '1' && q == 9) q <= 0;
    end


module count_fast(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The count is a 9-bit value with the least significant bit always zero.

always @endmodule
