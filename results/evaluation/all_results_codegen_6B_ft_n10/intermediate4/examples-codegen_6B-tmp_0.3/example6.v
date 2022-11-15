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
// out=1 if the current state is state 0 and in=1, or if the current state is state 1 and in=1
assign out = present_state & (in | ~reset);

// Register to store the next state, and output the present state
always @(posedge clk or posedge reset)
	if (reset)
	begin
	next_state <= 0;
	present_state <= 0;
	end
	else
	begin
	present_state <= next_state;
	next_state <= (present_state & (~in | ~reset)) | (next_state & (~in | ~reset));
	end

endmodule
