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
assign out = present_state[1];
always @(posedge clk) 
	if(reset) // if state 0 in the current state, go to state 1
	begin
	next_state = present_state ^ present_state;
	present_state = next_state; // equal to present_state = next_state
	end
	else if (present_state[1] == 0 & in == 1) // stay in state 1
	begin
	next_state = present_state ^ present_state;
	present_state = next_state;
	end
	else if (present_state[1] == 1 & in == 0) // stay in state 1
	begin
	next_state = present_state ^ present_state;
	present_state = next_state;
	end
	// else, stay in state 1
endmodule
