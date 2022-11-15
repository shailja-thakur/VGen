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
//The FSM starts in the IDLE state and transitions to the S1 state when a goes high and to the S2 state when b goes high.
//The FSM transitions back to the IDLE state when both inputs go low.
always @(posedge clk)
begin
  if (next_state == IDLE)
  begin
    if (a == 1)
    begin
      next_state = S1;
    end
    if (b == 1)
    begin
      next_state = S2;
    end
  end
  if (next_state == S1)
  begin
    if (a == 0)
    begin
      next_state = IDLE;
    end
    if (b == 1)
    begin
      next_state = S3;
    end
  end
  if (next_state == S2)
  end
endmodule
