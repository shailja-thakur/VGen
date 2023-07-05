// This is a Moore state machine with two states 0 and 1, one input in, and one output out. 
// Reset state is 0. Output is high in state 0. If in is low, state changes.
module simple_fsm(input clk, input reset, input in, output out);
reg present_state, next_state;
// Output out is high only in state 0, it is low otherwise
// state toggles when input in is low. state does not change when input in is high