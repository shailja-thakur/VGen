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
always @(posedge clk)
begin
  if (reset) begin
    next_state <= 0;
    present_state <= 0;
  end
  else if (in) begin
    next_state <= 1;
    present_state <= next_state;
  end
  else begin
    next_state <= 0;
    present_state <= next_state;
  end
end

// Design a state machine with multiple inputs and multiple outputs.
// Reset state is 0.
// In state 0, if in1=1, stay in state 0. In state 0, if in1=0, go to state 1.
// In state 1, if in1=1, stay in state 1. In state 1, if in1=0, go to state 2.
// In state 2, if in1=1, stay in state 2. In state 2, if inendmodule
