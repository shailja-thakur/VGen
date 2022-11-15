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
// State transitions on the positive edge of the clock.
always @(posedge clk or posedge reset) 
	if(reset) 
	present_state <= 0; 
	else 
	present_state <= next_state;
// Next-state logic, set next_state = 0 if the input is 0, and next_state = 1 if the input is 1.
// Since the above logic is non-blocking, the input latching can be carried out on the same cycle as the next_state logic.
always @(present_state, in) 
	if(present_state == 0)
	next_state <= 0; 
	else 
	next_state <= in; 
// Output logic, set out=0 when the present_state is 0, and out=1 when the present_state is 1.
assign out = present_state; 
endendmodule
