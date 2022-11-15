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
//In any other case the output is low.
always @(posedge clk or negedge reset)
  if (cur_state == IDLE)
  {
    next_state = IDLE;
    if (a == 1) next_state = S1;
    if (b == 1) next_state = S2;
    if (next_state != IDLE) cur_state = next_state;
  }
  else if (cur_state == S1)
  {
    next_state = S2;
    if (b == 1) next_state = S3;
    if (next_state != IDLE) cur_state = next_state;
  }
  else if (cur_state == S2)
  {
    next_state = S3;
    if (a == 1) next_state = S1;
endmodule
