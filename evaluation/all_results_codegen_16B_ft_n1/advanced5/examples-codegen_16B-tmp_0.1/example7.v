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
//The FSM is controlled by the clock.
always @(posedge clk)
begin
  if (a == 1)
  begin
    cur_state = S1;
    next_state = S2;
  end
  else if (b == 1)
  begin
    cur_state = S2;
    next_state = S3;
  end
  else
  begin
    cur_state = IDLE;
    next_state = IDLE;
  end
end

//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
//The FSM is controlled by the clock.
always @(posedge clk)
begin
  if (a == 1)
  begin
    cur_state = S1;
    next_state = S2;
end
end
endmodule
