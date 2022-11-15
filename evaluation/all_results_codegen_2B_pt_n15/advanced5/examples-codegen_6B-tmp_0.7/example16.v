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
//The output is not high any longer when all inputs are low.
//The FSM is controlled by the clock signal and the reset input.
always@(posedge clk or negedge reset)
begin
  if (reset == 1)
    cur_state = IDLE;
  else if (a == 1)
    cur_state = S1;
  else if (b == 1)
    cur_state = S2;
  else if (a == 1 and b == 1)
    cur_state = S3;
  else
    cur_state = IDLE;
  if (cur_state == S1)
  {
    if (next_state == S2)
    {
      next_state = S3;
    }
    else
    {
      next_state = IDLE;
    }
  }
  else if (curend
endmodule
