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
// Set in=1 to in:

// Add input because allowed to address (in)
// are 1 at the default. First clock cycle at the input.
// A was returned to start 0 in state 0 so that we don't
// the previous state.
// A enter in state 1 depends on state 0 and no transition at the next state
// of 1.
// A means that we know the state==1 (in) or in transition. The computation in
// the computation could come on an earlier choice.

always @(posedge clk)
begin
  if (reset)
    present_state <= 1'd1;
  else if (i)
    present_state <= 1'd0;
  else if (!next_state && !present_state) // A rising edges on previous clock
    present_state <= 1'd1;
  else if (!presentend
endmodule
