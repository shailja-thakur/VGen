// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Otherwise, if reset is low, the output q should be 5'b00000

// The envelope, envelope that uses the same clr signal as an incrementer.
// The sequencer is wired to the envelope.
reg [3:0] r = 4'b1111; // If the 1, the next - 4'b0001 in the input, so it starts from 0

// These are the envelope.
// This could be just a "one shot" or be a key will be placed in the "one shot"
// which would be a "one shot".
reg [3:0] rl = 4'b1111; // If the 1, the next - 4'b0001 in the input, so it starts from 0

// For a given time, a 25-bit counter.
reg [7:0] timer_index = 0;

// These are the envelope.
always @(endmodule
