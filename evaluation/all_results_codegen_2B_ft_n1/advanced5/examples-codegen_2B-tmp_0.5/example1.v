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
reg [3:0] z_out;

always @(posedge clk)
  if (reset)
    cur_state = IDLE;
  else
    if ((a == 1) and (b == 1))
      cur_state = S1;
    else
      if ((a == 1) and (b == 0))
        cur_state = S2;
      else
        if ((a == 0) and (b == 1))
          cur_state = S3;
        else
          cur_state = IDLE;
  next_state = cur_state;
  if (cur_state == IDLE)
    z_out = 0;
  else
    if ((a == 1) and (b == 1))
      z_out = 1;
    else
      if ((a == 1) and (b == 0))
        z_endmodule
