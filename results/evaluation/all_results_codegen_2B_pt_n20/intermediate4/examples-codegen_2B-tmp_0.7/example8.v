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
state state0() {
  if (in)
    out = 1;
  else
    out = 0;
  present_state = 0;
  next_state = 0;
  return simple_fsm(clk, reset, in, out);
}
state state1() {
  if (in)
    out = 1;
  else
    out = 0;
  present_state = 1;
  next_state = 1;
  return simple_fsm(clk, reset, in, out);
}
// In state 0, if clk=1, go to state 0. In state 0, if clk=0, go to state 1
// In state 1, if clk=1, stay in state 1. In state 1, if clk=0, go to state 0
// out=1 in state 0 and out=0 in state 1endmodule
