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
// Set to output in state 0 and turn on the output.
reg [1:0] state, next_state;
// 0 to 1, if in=0, output is 1.
// 1 to 1, take out output.
assign out = (present_state == 0) ? 0 : state;
// If in=1, output is 0, output stays 1.
assign out = (present_state == 1) ? 1 : 0;
// If in=0, output is 1, output stays 0.
assign stays 1.
assign out = (present_state == 2) ? 0 : state;
// If in=1, output is 0, output stays 1.
assign stays 1.
assign out = (present_state == 3) ? 1 : 0;
// If in=0, output is 1, output stays 0.
assign stays 1.
assignendmodule
