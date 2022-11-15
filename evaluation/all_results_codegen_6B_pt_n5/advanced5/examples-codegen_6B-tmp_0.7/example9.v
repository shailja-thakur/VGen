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
always @(posedge clk) begin
// There are 4 states for this FSM.
// Initial State is IDLE
if (cur_state == IDLE && a && b)
  next_state <= S1;
else if (cur_state == IDLE && a)
  next_state <= S2;
else if (cur_state == IDLE && b)
  next_state <= S3;
else if (cur_state == S1 && a && !b)
  next_state <= S2;
else if (cur_state == S1 && a && b)
  next_state <= S3;
else if (cur_state == S2 && !a && b)
  next_state <= S3;
else if (cur_state == S2 && a && !b)
  next_state <= S1;
else if (cur_stateend
endmodule
