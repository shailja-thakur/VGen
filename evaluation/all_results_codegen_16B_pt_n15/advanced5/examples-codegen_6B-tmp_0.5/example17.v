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
//The FSM is implemented with two counters and an event that is reset when either of the input signals is low.
//The output of the FSM is high if the FSM is in the S1 state.
//The output of the FSM is low if the FSM is in the S2 state.
//The output of the FSM is high if the FSM is in the S3 state.
always @(posedge clk)
begin
  if (a) begin
    cur_state <= S1;
    next_state <= S1;
  end
  else if (b) begin
    cur_state <= S2;
    next_state <= S2;
  end
  else begin
    cur_state <= IDLE;
    next_state <= IDLE;
  end
  if (cur_state == IDLE) begin
    next_state <= S3end
end
endmodule
