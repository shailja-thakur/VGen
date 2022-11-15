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
assign out = present_state & (in ^ next_state);
always @(posedge clk or posedge reset)
	begin
	if (reset)
	present_state <= 0;
	else
	present_state <= next_state;
	end
always @(present_state or in)
	begin
	next_state = 0;
	if (present_state == 0 & in)
	next_state = 1;
	else if (present_state == 1 & ~in)
	next_state = 0;
	end
endmodule
