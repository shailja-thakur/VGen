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
  if(reset)
  {
    present_state = 0;
    next_state = 0;
    out = 0;
  }
  else if(in && !present_state)
  {
    present_state = 1;
    next_state = 1;
    out = 1;
  }
  else if(!in && present_state)
  {
    present_state = 0;
    next_state = 0;
    out = 0;
  }
  else
  {
    // In any other case, the state machine remains in present state
    out = present_state;
  }
end

// The output of the second module is the same as the first
module simple_fsm2(clk, reset, in, out);
input clk;
input reset;
input inendmodule
