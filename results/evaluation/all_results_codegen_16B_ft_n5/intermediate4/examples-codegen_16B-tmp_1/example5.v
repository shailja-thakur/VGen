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
// in goes to next state when clock changes
// This state machine only has two states: one with in=0 and one with in=1
always @(posedge clk)
	begin
	if(reset)
	// Reset resets to state 0
	present_state = 1'b0;
	else
	// Otherwise, go to next state
	present_state = next_state;
	end
always @(in or present_state)
	begin
	case(present_state)
	1'b0: 
	// In state 0
	begin
	if(in)
	// If in=1 then stay in state 0
	next_state = 1'b0;
	else 
	// Otherwise, go to state 1
	next_state = 1'b1;
	end
	1'b1: 
	// In stateend
endmodule
