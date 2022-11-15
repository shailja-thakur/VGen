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

reg x_in, y_in;

wire state_memory[x_in];
reg trooper;

always @(posedge clk)
{
  trooper = (reset == 0) ? 1 : 0;
  
  if (reset == 1)
    next_state = 0;
  
  // when in = 0, in state=0
  if (in == 0 && trooper == 0)
  {
    state_memory[x_in] = 0; // solicit downstream changes
    y_in = state_memory[0];
    out=1;
        
    next_state = 1;
  }
  // when by_lookup(x) == 0 and in = 1, in state=1
  else if (in == 1 && trooper == 1)
  {
    out = 1;
//    state_memoryendmodule
