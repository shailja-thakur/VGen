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
  if (next_state == IDLE)
  {
    cur_state = IDLE;
    next_state = S1;
  }
  else if (next_state == S1)
  {
    cur_state = S1;
    next_state = S2;
  }
  else if (next_state == S2)
  {
    cur_state = S2;
    next_state = S3;
  }
  else if (next_state == S3)
  {
    cur_state = S3;
    next_state = IDLE;
  }
  else
  {
    next_state = IDLE;
  }
  if (a)
  {
    next_stateendmodule
