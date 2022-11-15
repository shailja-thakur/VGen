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
// The FSM transitions from S1 to S2 and S2 to S3 when the input signals a or b are high irrsepective of their order.
// The FSM transitions from S1 to S2 and S2 to S3 when the input signals a or b are high irrsepective of their order.
// The FSM transitions from S1 to S2 and S2 to S3 when the input signals a or b are high irrsepective of their order.
always @(posedge clk)
begin
  if (next_state == IDLE)
    cur_state = IDLE;
  else
    cur_state = next_state;
  next_state = S1;
  if (a != 0)
    next_state = S2;
  if (b != 0)
    next_state = S3;
  z = cur_end
endmodule
