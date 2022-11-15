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
begin
  if (reset)
    next_state <= 0;
  else if (next_state == 0)
    present_state <= in;
  else if (next_state == 1)
    present_state <= 1;
  else if (next_state == 2)
    present_state <= in;
  else if (next_state == 3)
    present_state <= 1;
  else if (next_state == 4)
    present_state <= in;
  else if (next_state == 5)
    present_state <= 1;
  else if (next_state == 6)
    present_state <= in;
  else if (next_state == 7)
    present_state <= 1;
  else if (next_state == 8)
    present_state <= in;
  else if (end
endmodule
