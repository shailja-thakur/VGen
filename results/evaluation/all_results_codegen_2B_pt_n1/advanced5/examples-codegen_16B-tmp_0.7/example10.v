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
//This is implemented as a FSM with state S1, which is the active state, and states S2 and S3, which are the idle states.
//The FSM transitions from S1 to S2 when a is high and from S3 to S2 when b is high and from S3 to S1 when b is low.
//The FSM transitions from S2 to S3 when b is high and from S1 to S3 when a is low.
//The FSM transitions from S2 to S1 when a is high.
//The FSM transitions from S1 to S2 when a is low and b is high.
//The FSM transitions from S3 to S1 when b is low and a is high.
always @(posedge clk)
begin
  if(next_state == IDLE)
  begin
    cur_state = IDLE;
    next_state = IDend
end
endmodule
