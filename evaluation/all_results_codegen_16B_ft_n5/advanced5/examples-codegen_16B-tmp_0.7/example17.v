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

begin
  cur_state <= IDLE;
  next_state <= IDLE;
  if (a) begin next_state <= S1; end;
  if (b) begin next_state <= S3; end;
  if (cur_state <= IDLE) begin next_state <= IDLE; end;
  if (cur_state == S1) begin next_state <= S2; end;
  if (cur_state == S2) begin next_state <= S1; end;
  if (cur_state == S3) begin next_state <= S3; end;
end

//This is an FSM with the output z high when both of the inpus are high.
begin
  cur_state <= IDLE;
  next_state <= IDLE;
  if (a and b) begin next_state <= S1; end;
end
endmodule
