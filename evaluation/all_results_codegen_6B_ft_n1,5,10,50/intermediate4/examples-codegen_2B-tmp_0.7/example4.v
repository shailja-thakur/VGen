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
// reset=1 to reset
// reset=0 to reset

always @(posedge clk)
  if ((reset == 1) and (clk == 1'b1))
  {
    reset = 1'b0;
  }
  else
  {
    reset = 1'b1;
  }

always @(posedge clk)
  if (reset == 1'b0)
  {
    present_state = 0;
  }
  else
  {
    if(in)
    {
      if (present_state == 0)
      {
        present_state = 1;
        out = 1;
      }
      else
      {
        out = 0;
      }
    }
  }

always @(posedge clk)
  if (present_state == 1)
  {
    endmodule
