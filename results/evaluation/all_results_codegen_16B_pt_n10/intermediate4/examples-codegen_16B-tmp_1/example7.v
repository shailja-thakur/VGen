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
simple_fsm process(present_state, next_state)
{ 
    out = present_state, present_state = next_state; 
}
// Reset the present state to 0 and the next state to the value passed in
simple_fsm enable(bool state, reg next_state);
// Forgivingly admit that I don't quite understand args to the module
void a_simple_fsm();
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
//
// We've only written 1 responsibility, out, that fixes our output to indicate
// the present stateendmodule
