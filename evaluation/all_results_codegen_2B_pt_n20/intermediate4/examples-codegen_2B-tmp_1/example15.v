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
  if (reg_read(reset)) {
    reset_value = 1;
  } else if (next_state < 1) {
    next_state = 1;
    reset_boolean = 0;
  } else if (next_state < 2) {
    next_state = 2;
  } else if (next_state < 3) {
    next_state = 3;
    reset_boolean = 1;
    present_state = 0;
  } else if (next_state < 4) {
    next_state = 4;
    reset_boolean = 1;
    present_state = 1;
  } else writemessage("ERROR IN INIT LOOP - next_state too large");
  if (reset_boolean)
    goout0(1);
  else out = 0;
endmodule
