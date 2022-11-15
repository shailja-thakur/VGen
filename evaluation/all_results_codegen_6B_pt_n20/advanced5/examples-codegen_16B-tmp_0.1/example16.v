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
//The FSM transitions from S1 to S2 when a goes high and from S2 to S3 when b goes high.
//The FSM transitions from S1 to S2 when a goes low and from S2 to S3 when b goes low.
//The FSM transitions from S1 to S2 when a goes high and from S2 to S3 when b goes low.
//The FSM transitions from S1 to S2 when a goes low and from S2 to S3 when b goes high.
always @(posedge clk or negedge reset)
begin
  if (next_state == IDLE)
  begin
    if (a == 1)
    begin
      next_state = S1;
    end
    else if (b == 1)
    begin
      next_state = S2;
    end
    else if (a == 0)
    beginend
end
end
endmodule
