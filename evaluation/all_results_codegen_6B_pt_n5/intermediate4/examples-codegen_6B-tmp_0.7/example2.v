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
  case present_state is
    0:
      if in = 1 then
        next_state <= 1;
      end
      else next_state <= 0;
    1:
      if in = 1 then
        next_state <= 0;
      end
      else next_state <= 1;
  endcase
end

// The state machine
always @(posedge clk)
begin
  // Only if reset is high
  if (reset)
  {
    // Reset the state machine
    next_state <= 0;
    out = 0;
  }
  else
  {
    // Current state.
    out <= next_state;
  }
end

endmodule
