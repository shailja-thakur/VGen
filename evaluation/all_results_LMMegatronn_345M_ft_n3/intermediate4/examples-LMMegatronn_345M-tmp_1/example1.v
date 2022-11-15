// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
// Set next states.
reg [1:0] present_state, next_state;
// Storage 0, calculate next state.
reg output_in_state, next_output_state;
// 1 to state 1.
//-----------------------------------------------------------------------------
// COMMANDS HERE---------------------------------------------------------------------------
// This is the initial states for the input in the sequence.
// states that controls other states: go back to state 0 in that state.
// the enable input is the input in this state as soon as the input in the sequence (9 or 011) goes low, this is the current state
// in the inputted sequence (2) is the output as soon as the output is the done state.
// because the state for the output is on, go back to state 0.
//-----------------------------------------------------------------------------
// Parameters limited to 10ms (24-bit) position.
localparam [19:0] MINNDRANGE0 = 19'endmodule
