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
//The FSM is in the IDLE state.
always @(posedge clk)
begin
  if(next_state == IDLE)
  begin
    if(a == 1)
    begin
      next_state = S1;
      cur_state = S1;
    end
    else if(b == 1)
    begin
      next_state = S2;
      cur_state = S2;
    end
    else
    begin
      next_state = IDLE;
      cur_state = IDLE;
    end
  end
  else if(next_state == S1)
  begin
    if(a == 1)
    begin
      next_state = S1;
      cur_state = S1;
    end
    else if(b == 1)
    begin
      next_state = S2;
end
end
end
endmodule
