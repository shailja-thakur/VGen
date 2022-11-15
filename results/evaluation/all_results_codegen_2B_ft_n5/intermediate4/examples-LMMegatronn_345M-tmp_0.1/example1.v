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
// Set to 2 in state 1, if in=1, then go to state 1.
reg [1:0] next_state;
// 0 in 10 in=0, else, means in=0, else, means in=1.
// 1 in=0, else, means in=1, else, means in=0.
// 2 in=0, else, means in=1, else, means in=0.
// 3 in=0, else, means in=1, else, means in=0.
// 4 in=0, else, means in=0, else, means in=1.
// 5 in=0, else, means in=1, else, means in=0.
// 6 in=0, else, means in=1, else, means in=0.
// 7 in=0, else, means in=1, else, means in=0.endmodule
