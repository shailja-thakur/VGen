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
//The FSM is in the IDLE state when both inputs are low.
always @(posedge clk or negedge reset)
  if (next_state == IDLE)
  {
    if (a == 1)
    {
      next_state = S1;
    }
    else if (b == 1)
    {
      next_state = S2;
    }
    else
    {
      next_state = IDLE;
    }
  }
  else if (next_state == S1)
  {
    if (a == 1)
    {
      next_state = S2;
    }
    else if (b == 1)
    {
      next_state = S3;
    }
    else
    {
      next_state = IDLE;
    }
  }
  else if (endmodule
