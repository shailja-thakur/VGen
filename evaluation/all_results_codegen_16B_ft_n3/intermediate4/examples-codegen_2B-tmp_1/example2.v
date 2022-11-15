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
// assign out = present_state ^ next_state; 
// Please complete the functionality and implementation of this stimulus by using a RAM to store the present state and next state storage.
// hard-code data of the table (don't look for this BRIDGE sengleton example code)
//check0:1:1
//check0:1:0
//check1:1:1
//check1:1:0
//check1:0:1
//check1:0:0
// check0 -> check1
// check1 -> check0
// check1 -> check1
// check1 -> check1
// check1 -> check1
//check0:0:1
// check1:1:1
//check1:0:1
//check0:1:1
//check0:0:0
// check1 -> check0

reg[1:0]endmodule
