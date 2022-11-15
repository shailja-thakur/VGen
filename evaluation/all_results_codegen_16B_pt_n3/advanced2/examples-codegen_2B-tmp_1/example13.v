// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// When the clock decays, the output q goes up and down and when the clock
// scales up, the output q gets higher.
// The output q now contains the decade number dividing to 0 through 9.

always @(di, clk)
    count: count_slow/state i,clk,slowena,reset;

    exec: q = input [3:0];

endmodule
