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
// Remember to initialize state and next_state
initial 
begin
	present_state <= 0;
	next_state <= 0;
end
always @(posedge clk)
begin
	if (reset)
	begin
	// When reset is high, set state to 0
	present_state <= 0;
	end
	else
	begin
	// Always check the state and next state
	present_state <= next_state;
	end
end
always @(present_state or in)
begin
	case (present_state)
	0:
	begin
	// If in=1, stay in state 0
	if(in)
	begin
	next_state <= 0;
	end
	// If in=0, go to state 1
	else
	begin
	next_state <= 1;
	end
	end
	1end
endmodule
