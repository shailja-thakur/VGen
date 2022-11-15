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

initial out=1;
initial reset=0;

always @(posedge clk) begin
  // if in=1 and state is 0, set out to 1 ?
  if ((reset && in) && (present_state==0)) out=1;

  // if out=1 and in=1 then move to state 1
  if (out==1 && in==1) next_state=1;

  // if out=1 and in=0 then move to state 0
  if (out==1 && in==0) present_state=1;

  // if out=0 and in=1 then move to state 0
  if (out==0 && in==1) present_state=0;

  // if state** is present_state then print state
  if (next_state==present_state) print(present_state);
end

// state 0endmodule
