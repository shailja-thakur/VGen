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
//The FSM transitions from S1 to S2 when a goes high.
//The FSM transitions from S2 to S3 when b goes high.
//The FSM transitions from S3 to IDLE when both inputs are low.
always @(posedge clk)
begin
  cur_state <= next_state;
  next_state <= IDLE;
  if (a == 1)
  begin
    next_state <= S1;
  end
  else if (b == 1)
  begin
    next_state <= S2;
  end
  else if (a == b)
  begin
    next_state <= IDLE;
  end
end

//This is an FSM with the output z high when both of the input signals a and b are low.
//The FSM transitions from S1 to S2 when a goes low.
//The Fendmodule
