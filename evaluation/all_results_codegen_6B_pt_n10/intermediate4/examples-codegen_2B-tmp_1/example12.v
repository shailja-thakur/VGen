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
  out = 0b0000;
  present_state = 0;
  wait(~clk, PRESENT_MAX_STEP);  // wait PRESENT state
  present_state = time <= PRESENT_MAX_TIME;
  wait(~reset);  //wait reset input from other side
  in = ~in;
  reset = ~reset;

  out = ~out;
  wait(~clk);
  while (~out)
    wait(~in);
    wait(~clk, PRESENT_MAX_STEP);  // wait PRESENT state
    present_state = out = time <= PRESENT_MAX_TIME;
  wait(~reset);
end

endmodule
