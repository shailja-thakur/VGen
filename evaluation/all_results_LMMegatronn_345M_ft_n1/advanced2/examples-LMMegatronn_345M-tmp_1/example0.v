// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// This implementation
parameter S0=0;
parameter S1=1;

// The number of bits in the input signal. 
// The LSB of the input is clock, input MSB=1 and the LSB=0.
reg [3:0] q_d1 = 0;
reg [3:0] q_d2 = 0;
reg q_d3 = 0;
reg q_d4 = 0;
reg q_d5 = 0;
reg q_d6 = 0;

reg [3:0] value_a = 0;
reg [3:0] value_b = 0;

// For a clock pulse, the output above lets the output
// following the q's clock:
always@(posedge clk)
    begin
        value_a <= value_a + 1;end
endmodule
