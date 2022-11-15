// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
// The counter is implemented as a shift register.
reg [3:0] q;

always @(posedge clk or posedge reset)
    if(reset) q <= 0;
    else if(slowena) q <= q + 1;
    else q <= q;

// If the ena input signal is high, then increment the output q
assign q = q == 9 ? q + 1 : q;

endmodule
