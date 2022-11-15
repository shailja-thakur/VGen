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
always clk or (not reset and out) or (reset and in);
always clk or (slowdown(present_state[1]) and tinit);
always clk or (slowdown(present_state) and tinit);
always clk or (slowdown(next_state[1]) and tinit);
always clk or (slowdown(next_state) and tinit);
always clk or (present_state=[0, 1]) and (out=0);
always clk or (next_state=[0, 1]) and (out=1);
endmodule
