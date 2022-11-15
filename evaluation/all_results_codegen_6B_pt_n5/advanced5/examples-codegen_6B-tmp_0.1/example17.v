// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
//The FSM is implemented as a state machine.
always @(posedge clk or negedge reset)
  if (cur_state == IDLE)
  {
    if (a)
    {
      next_state = S1;
    }
    else if (b)
    {
      next_state = S2;
    }
    else
    {
      next_state = IDLE;
    }
  }
  else if (cur_state == S1)
  {
    if (b)
    {
      next_state = S2;
    }
    else if (a)
    {
      next_state = S3;
    }
    else
    {
      next_state = IDLE;
    }
  }
  else if (cur_state == S2)
  {
    ifendmodule
