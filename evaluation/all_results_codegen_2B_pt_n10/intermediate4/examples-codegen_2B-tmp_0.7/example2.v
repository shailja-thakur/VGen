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
// out=1 in state 0 and out=0 in state 1
always @(posedge clk)
{
  // If the input is 1, transition to state 1 by setting present_state to 1
  if (in) {
    if (next_state == 0) {
      present_state = 1;
    } else {
      present_state = next_state;
    }
  } else {
    // Transition to state 0, unless it's already 0.
    if (present_state == 0) {
      present_state = 0;
    } else {
      // Output 0 if it's in state 0, else output 1.
      out = (present_state == 0) ? 1 : 0;
    }
  }
  next_state = present_state;
}

always @(posedge clk)
{
  // If reset=endmodule
