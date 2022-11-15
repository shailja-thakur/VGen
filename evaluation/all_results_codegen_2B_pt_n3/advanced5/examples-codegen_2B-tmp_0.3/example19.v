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
  if (reset)
    cur_state = IDLE;
  else
  {
    cur_state = S1;
    next_state = S2;
    if (a == 1)
      next_state = S3;
    if (b == 1)
      next_state = S3;
  }

always @(posedge clk)
  if (cur_state == S1)
    z = 1;
  else if (cur_state == S2)
    z = 0;
  else if (cur_state == S3)
    z = 1;
  else
    z = 0;

endmodule
