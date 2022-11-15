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
assign out = present_state & in;
always @ (posedge clk)
begin
	if(reset) 
	begin
	next_state = 0;
	present_state = 0;
	end
	else 
	begin
	// State transition logic
	case(present_state)
	0: 
	if(in) 
	begin
	next_state = 1;
	// out=0 for all states, except 0
	present_state = 1;
	end
	else 
	begin
	next_state = 0;
	present_state = 0;
	end
	1: 
	if(in) 
	begin
	next_state = 1;
	// out=0 for all states, except 0
	present_state = 1;
	end
	else 
	begin
	next_end
end
end
endmodule
