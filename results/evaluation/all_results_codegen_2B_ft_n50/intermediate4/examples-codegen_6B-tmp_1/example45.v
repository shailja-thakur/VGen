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

parameter state0 = 1'b0, state1 = 1'b1; 
// changing this to two states keeps the next state logic simple

assign next_state = present_state & in; // determine the next state
// logic to determine if a transition between states occurs

assign transition = (present_state == state1) & (in); // if the two states are equal, then there is a transition
always @(posedge clk or posedge reset) 
	begin
	// if the reset flag is raised, or if the transition flag is raised
	if(reset | transition) 
	begin
	// assign the next state to be either a 0 or 1
	// this is according to the truth table for mux()
	out = next_state;
	
	// set the present state to be the next state
	present_state = next_state;end
end
endmodule
