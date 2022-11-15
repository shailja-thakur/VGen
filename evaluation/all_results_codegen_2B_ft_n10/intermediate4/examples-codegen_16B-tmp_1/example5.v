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
// State 0 will go back to state 0 again if in=0, and state 1 will go back to state 1 again if in=1.
// What goes into state 0 and 1 are the following, where j = bits of input in
// casej 0: out=0, next_state=0 if in=0, next_state=1 if in=1. Once again, if in = 0 then back to state 0
// 1: out=0, next_state=1 if in = 1. Once again, if in = 0 then back to state 0
// 2: out=1, next_state=0 if in = 1;
 // Once again, if in = 0 then back to state 1
// 3: out=1, next_state=0 if in = 0. Once again, if in = 0 then back to state 1
always @ (in, present_state)
begin
case (presentend
endmodule
