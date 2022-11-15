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
//The FSM outputs high when the current state is S1 or S2.

always @(posedge clk or negedge reset)
  if (reset)
  begin
    cur_state <= IDLE;
    next_state <= IDLE;
  end
  else if (a)
  begin
    if (cur_state == IDLE)
      cur_state <= S1;
    else if (cur_state == S1)
      cur_state <= S2;
    else if (cur_state == S2)
      cur_state <= S3;
    else if (cur_state == S3)
      cur_state <= S1;
  end
  else if (b)
  begin
    if (cur_state == IDLE)
      cur_state <= S2;
    else if (cur_state == S2)end
endmodule
