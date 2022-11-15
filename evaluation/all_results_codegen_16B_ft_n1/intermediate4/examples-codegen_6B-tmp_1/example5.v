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
always @ (posedge clk)
	//
	begin: state0
	if (out) 
	next_state = reset ? 0 : 1; // Regular case: if next_state is 0 from a reset 
	else 
	next_state = reset ? 0 : in ? 0 : 1; // Special case: if next_state is 0 from a reset, then won't be 0 going into state 1
	if (next_state === 1)
	out = 1;
	else
	out = 0;
	//
	end: state1
	//
	// Initialize to reset state, regardless of clock or being reset or not.
	always @(posedge clk)
	if (reset)
	begin: IDLE_STATE
	present_state = reset_state;
	assign out = 0; // Outputs 0, regardless of clock, toend
endmodule
