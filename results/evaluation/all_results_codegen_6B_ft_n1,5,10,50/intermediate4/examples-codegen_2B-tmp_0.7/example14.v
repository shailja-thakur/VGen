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
state0_t0::state0_t0() : present_state(0) {}
state1_t0::state1_t0() : present_state(1) {}

void main() {
  // Make the output go to a wire in the top module.
  out = 1;
  // Draw input.
  in = 1;
  clk = 1;
  while(1) {

    if (reset == 1) {
      // Force reset to 0.
      reset = 0;
      // Go to state 0.
      present_state = 0;
    }
    else {
      if (in == 1) {
        // If in state 0, go to state 1.
        if (present_state == 0)
          // If out state 0, go to state 1.
          if (out == 1)
            // If out state 1endmodule
