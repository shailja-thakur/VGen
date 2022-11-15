// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(rxclk)
begin
    // The function flip_slow() below is called inside the @(...) block in the if below.
    // The @(...) block is a separate assembly block if very slow.
    // Code for testing this block must precede code for profiling or predicting the
    // slow path. This is achieved by "OR slowena, clk" in flip_slow().
    if (slowena) {
        // Only increment p if the ena input is high and the clock is not the terminal value.
        // This is only necessary because the chips are size_t based, not boolean.
        reg p = (clk ? -1 : (slowena & (q<9)) ? ++q : 0);
        signal clk_active;
        // This instruction is about 3 instructions/cycle.
        // Assumption is that clock is very slow; then itend
endmodule
