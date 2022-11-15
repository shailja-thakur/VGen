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
// Note: out is initially updated in reset.
always @ (reset, clk)
  if (reset.read())
    out.write(0);
  else if (!in.read() && (present_state = ~next_state & 1))
    out.write(1);
  else {
    out.write(0);
    next_state = present_state << 1;
  }
endmodule
