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
always @(posedge clk)
{
  // Start a transition
  if (reset == 0)
  {
    present_state = 0;
    next_state = 0;
  }

  // If in=1, go to next state
  if (in == 1)
  {
    next_state = 1;
  }

  // If in=0, go to next state
  if (in == 0)
  {
    next_state = 0;
  }

  // If in=1, go to next state
  if (reset == 1)
  {
    next_state = 0;
  }

  // If in=0, go to next state
  if (reset == 0)
  {
    next_state = 1;
  }

  // Transition
  if (next_state != present_state)
  endmodule
