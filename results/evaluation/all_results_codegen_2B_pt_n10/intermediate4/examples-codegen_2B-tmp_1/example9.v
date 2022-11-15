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
initial state_machine
bias b(in, out);
{
   next_state = reset;
}
// Transitions:
// 0 -> 0/1 -> 1
initial state_machine
fsm_transition
b
{
    c = reset & present_state;
    out = ~reset ^ o_update & (in | c) & (next_state);
}
// 1 -> 0
initial state_machine
fsm_transition
b
{
    c = in & next_state;
    out = ~reset ^ o_update & (in | c) & (b.present_state == 0);
}
// 0 -> 1
initial state_machine
fsm_transition
b
{
    c = ~reset & fiveBitBody & (next_state);
    out = ~reset ^ o_update & (in | c) & (endmodule
