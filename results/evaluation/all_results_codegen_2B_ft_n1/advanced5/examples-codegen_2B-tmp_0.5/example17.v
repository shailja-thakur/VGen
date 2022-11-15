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
//This is an FSM with the output z high when the input a or b are high irrespectively of their order.
//This is an FSM with the output z high when the input a or b are high irrespectively of their order.
reg [7:0] state_buf;

always @(posedge clk)
  if (cur_state == IDLE)
  {
    next_state = S1;
    //This is an FSM with the output z high when the input a or b are high irrespectively of their order.
    if (a == 1)
    {
      next_state = S2;
    }
    if (b == 1)
    {
      next_state = S3;
    }
    cur_state = next_state;
  }
  else if ((cur_state == S1) && (next_endmodule
