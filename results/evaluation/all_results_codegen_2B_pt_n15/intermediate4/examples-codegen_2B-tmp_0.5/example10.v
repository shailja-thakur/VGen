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
// In state 0, if clk=1, go to state 1. In state 1, if clk=1, stay in state 1.
// In state 1, if clk=0, go to state 0. In state 0, if clk=0, stay in state 0.
always @(posedge clk)
  if (clk == 1)
    {
      if (reset == 1)
        {
          next_state = 0;
        }
      else if (reset == 0)
        {
          next_state = 1;
        }
      else
        {
          if (in == 1)
            {
              next_state = 0;
            }
          else
            {
              next_state = 1;
            }
        }
    }
  else
    {
      next_state = present_state;
    }
endmodule
