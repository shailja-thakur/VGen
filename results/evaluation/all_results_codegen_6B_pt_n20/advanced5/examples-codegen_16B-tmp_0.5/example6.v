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
//The FSM transitions from S1 to S2 when a is high, and from S2 to S3 when b is high.
//The FSM transitions from S1 to S3 when both a and b are low.
//The FSM transitions from S2 to S3 when only one of a or b is high.
always @(posedge clk)
begin
  cur_state <= next_state;
  next_state <= (a < b ? S1 : S2);
end
endmodule
