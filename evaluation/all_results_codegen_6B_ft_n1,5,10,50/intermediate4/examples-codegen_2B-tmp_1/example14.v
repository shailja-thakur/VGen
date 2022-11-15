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

initial begin
  next_state = 0;
  out = 0;
  present_state = 0;
  if (reset) disable_reset_delayed();
  if (clk) disable_threshold(next_state, in);
  // if (clk) start_waiting_delayed();
  if (present_state==0 && clk==1) out = 1;
end

always @(posedge clk, posedge reset)
  if (reset)
  {
    next_state  = 0;
    out = 0;
  }
  // else if (clk)
  else if (present_state==0) {out = 1; };
  // else if (clk)
  else {
    next_state = 1;
    out = 1;
  }
  present_state = next_state;endmodule
