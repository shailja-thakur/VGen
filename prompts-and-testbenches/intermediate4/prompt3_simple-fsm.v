// This is a Moore state machine with two states 0 and 1, one input in, and one output out. 
// Reset state is 0. Output is high in state 0. If in is low, state changes.
module simple_fsm(input clk, input reset, input in, output out);
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1