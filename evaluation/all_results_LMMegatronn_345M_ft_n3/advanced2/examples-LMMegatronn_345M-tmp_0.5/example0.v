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
// The output is 12 bits, and the state of the output is 
// clocked by clk.
//
// The counter is clocked by the posedge clk.
//
// The output is clocked by the posedge clk.
//
// The state machine clr signal which is clocked in the current
// state machine.
//
// When the ena is high, the output is tri-stated to the state
// of the clr signal. 
//
// When the ena is high, the output is tri-stated to the state
// of the clr signal.
//
// When the ena is high, the output is tri-stated to the state
// of the clr signal.
//
// When the ena is high, the output is tri-stated to the state
// of theendmodule
