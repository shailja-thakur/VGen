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
reg [1:0] state;

initial state = 0;

initial state_switch_0 = 0;
initial state_switch_1 = 1;

always @(posedge clk)
{
  next_state = state_switch_0;
  state = next_state;
  if (reset == 0)
    out = 0;
  else
    out = ~(in);
}

always @(posedge clk)
{
  if (reset == 1)
    state_switch_0 = 1;
  else
    state_switch_0 = 0;
}

always @(posedge clk)
{
  if (reset == 0)
    state_switch_1 = 1;
  else
    state_switch_1 = 0;
}

always @(posedge clk)
{
  presentendmodule
