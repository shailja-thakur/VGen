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
// If the next state is 0, then out=1, and if the next state is 1, then out=0.
// When reset goes high, the present state and next state are reset, and the output is 0.
always @(posedge clk)
if (reset) 
	begin
	present_state <= 0;
	next_state <= 0;
	out <= 0;
	end
else 
	begin
	// State transition logic
	case(present_state)
	0: 
	if (in) 
	begin
	next_state <= 0;
	out <= 0;
	end
	else 
	begin
	next_state <= 1;
	out <= 0;
	end
	1: 
	if (in) 
	begin
	next_state <= 0;
	out <= 0;
	end
end
endmodule