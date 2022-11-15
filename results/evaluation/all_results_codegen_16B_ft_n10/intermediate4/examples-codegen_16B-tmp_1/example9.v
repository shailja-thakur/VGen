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
// defparam state0.a=0, state0.b=0, state1.a=0, state1.b=1
state_0 state0 (in, clk, reset, 0, 0, present_state); 
state_1 state1 (in, clk, reset, 0, 1, next_state);
dff df[1:0] (present_state, next_state, clk, out);
endmodule
