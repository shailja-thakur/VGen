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
  // If input is 1, change state to 1
  if(in == 1)
  {
    next_state = 1;
  }
  // If input is 0, change state to 0
  else if(in == 0)
  {
    next_state = 0;
  }

  // If the previous state is 1, change state to 0
  // else change state to 1
  if(present_state == 1)
  {
    out = 0;
    next_state = 0;
  }
  // If the previous state is 0, change state to 1
  else
  {
    out = 1;
    next_state = 1;
  }

  // If the previous state is not in either 0 or 1, change state to 0
  if(present_state != next_state)
endmodule
