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
always @(posedge clk or negedge reset)
begin
  cur_state <= next_state;
  next_state <= S1;
  if (a) next_state <= S2;
  if (b) next_state <= S3;
  if (cur_state == IDLE) begin
    z <= 1;
  end
end

//This is an FSM with the output z high when both of the input signals a and b are high.
always @(posedge clk or negedge reset)
begin
  cur_state <= next_state;
  next_state <= S1;
  if (a) next_state <= S2;
  if (b) next_state <= S3;
  if (cur_state == IDLE) begin
    z <= 1;
  end
end

//This is an FSMendmodule
