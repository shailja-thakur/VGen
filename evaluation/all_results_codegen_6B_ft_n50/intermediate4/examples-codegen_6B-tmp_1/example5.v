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
assign out = present_state ? (in ? 1 : 0) : (in ? 0 : 1);
// Register output during this flipflop is synthesized
// Intermediate values are optional and only used for timing
always @(posedge clk or posedge reset)

	if(reset)
	begin
	present_state <= 0;
	// Set the next state to be the same as the present state.
	next_state <= present_state;
	end
	else
	begin
	// Update the state of the flipflop.
	present_state <= next_state;
	end

// Output result of state and present_state, which is uses to generate
// the next_state based on the present_state.

endmodule
