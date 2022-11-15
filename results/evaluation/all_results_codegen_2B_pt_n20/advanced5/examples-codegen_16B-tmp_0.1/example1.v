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
always @(posedge clk or negedge reset)
begin
  if (reset) begin
    cur_state <= IDLE;
    next_state <= IDLE;
  end
  else if (next_state == IDLE) begin
    cur_state <= IDLE;
    next_state <= IDLE;
  end
  else if (next_state == S1) begin
    cur_state <= S1;
    next_state <= S2;
  end
  else if (next_state == S2) begin
    cur_state <= S2;
    next_state <= S3;
  end
  else if (next_state == S3) begin
    cur_state <= S3;
    next_state <= IDLE;
  end
  else begin
    cur_stateend
end
endmodule
