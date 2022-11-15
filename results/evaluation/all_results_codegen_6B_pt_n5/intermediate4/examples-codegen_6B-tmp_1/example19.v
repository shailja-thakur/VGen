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
always @(posedge clk or negedge reset)
  // resets are delayed by the period of edge triggered clocks so negedges are 
  // the same as edge triggered: edge trigger is the short pulse, worst case 
  // is short edge.
  if (!reset)
  {
    out = next_state;
  }
  else
  {
    present_state = 0;
  }
  if (!clk)
  {
    next_state = present_state;
  }
  else
  {
    next_state = !present_state;
  }
  present_state = next_state;
endmodule
