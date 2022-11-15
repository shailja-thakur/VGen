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
// TODO: How many states do we need?
initial begin
  present_state = 0;
  next_state = 0;
  out = 0;
end
// TODO: What is a transition?
initial begin
  if (clk == 1 && reset == 1) // TODO: Add a reset for the state machine
    next_state = 1;
  else if (clk == 1 && reset == 0)
  // TODO: Add logic here to continue execution
    next_state = 1;
  else
  // TODO: Add logic here to continue execution
    next_state = 0;
end
// TODO: What is a state transition?
initial begin
  if (clk == 1 && reset == 1)
    present_state = 0;
  else if (clk == 1 && reset == 0)
    present_state = 1;
end
endmodule
