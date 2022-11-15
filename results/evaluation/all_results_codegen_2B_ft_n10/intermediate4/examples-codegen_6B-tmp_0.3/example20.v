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

// Register output depends on the current state.
// If the current state is 0, then out=0. If the current state is 1, then out=1.

always @(posedge clk or posedge reset)
	if (reset)
	begin
	present_state <= 0;
	next_state <= 1;
	end
	else
	begin
	present_state <= next_state;
	next_state <= 0;
	end

assign out = present_state;

endmodule
