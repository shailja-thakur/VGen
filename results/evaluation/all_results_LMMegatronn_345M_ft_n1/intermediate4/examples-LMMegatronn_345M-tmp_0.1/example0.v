// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
// Set to state 1 to state 0.
always @(posedge clk)
begin
  if (reset == 1'b1)
  begin
    state <= 1'b0;
    next_state <= 1'b0;
  end
  else
  begin
    state <= next_state;
    if (in == 1'b1)
      next_state <= 1'b0;
    else if (state == 1'b0)
      next_state <= 1'b1;
    else if (state == 1'b1)
      next_state <= 1'b0;
  end
end

assign out = (present_state == 1'b1) ? 1'b1 : 1'b0;

endmodule
