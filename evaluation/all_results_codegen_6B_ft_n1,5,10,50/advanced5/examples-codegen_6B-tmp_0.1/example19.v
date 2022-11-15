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
//The output is low when both inputs are low.
always @(posedge clk or negedge reset)
begin
  if (reset) begin
    cur_state = IDLE;
    next_state = IDLE;
  end
  else if (a) begin
    cur_state = S1;
  end
  else if (b) begin
    cur_state = S2;
  end
  else begin
    cur_state = S3;
  end
  next_state = cur_state;
  if (cur_state == S1) begin
    if (b) next_state = S2;
    else next_state = S3;
  end
  if (cur_state == S2) begin
    if (a) next_state = S1;
    else next_state = S3;
  end
  ifend
endmodule
