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
//The output is high only when both inputs are high.
always @(posedge clk or negedge reset)
  if(next_state == IDLE)
    next_state = cur_state;
  else
    next_state = next_state != IDLE ?  cur_state : next_state;
  switch (next_state)
  {
    case S1:
      z = 0;
      break;
    case S2:
      z = 1;
      break;
    case S3:
      z = 0;
      break;
    default:
      next_state = IDLE;
  }
end
endmodule
