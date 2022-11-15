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
always @(posedge clk)
  if (cur_state == IDLE)
  {
  cur_state = next_state;
  next_state = S1; //the output z is high when a or b are high.
  }
  else if (cur_state == S2)
  {
  cur_state = next_state;
  next_state = S3;
  }
  else if (cur_state == S3)
  {
  cur_state = next_state;
  next_state = S1;
  }
  else if (a && cur_state == S1)
  {
  cur_state = next_state;
  next_state = S2;
  }
  else if (b && cur_state == S1)
  {
  cur_state = next_state;
  nextendmodule
