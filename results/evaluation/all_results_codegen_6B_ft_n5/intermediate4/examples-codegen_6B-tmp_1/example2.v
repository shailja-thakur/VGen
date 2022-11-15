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
// if you're in state 0 and in is 0, then move to state 1, on the next clock edge it should goto state 0
// if you're in state 1 and in is 0, then move to state 0, on the next clock edge it should goto state 1
always @(posedge clk or posedge reset)
	if (reset) begin // if this statement is reached during reset, then both present and next are 0s.
	 //this means we have a reset, meaning we are going from state 0 -> state 1.
	present_state <= next_state;
	end
	else begin 
	//if this statement is reached during a clock edge, then both present and next are 1s
	//if next is 1 and present is 0, then this means we have a new input and we're going from state 1 -> state 0
	present_state <= next_state;
	//if nextendmodule
