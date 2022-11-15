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
// out=0 in state 1 and out=1 in state 0
// A reset must occur in state 0, otherwise, if in = 1, then next_state = 1.
// If in = 0, then next_state = 0.
always @(posedge clk) // Triggered everytime clk is triggered
begin
	if(reset) // When reset is triggered
	begin
	present_state = 0; // Set present state to state 0.
	next_state = 0; // Set next state to state 0.
	out = 0; // Set out to 0.
	end
	else
	begin
	present_state = next_state; // Assign present state to next state.
	out = (present_state == 0 && in == 1) ? 1 : 0; // Assign out to out.
	end
end
always @(present_state or inendmodule
