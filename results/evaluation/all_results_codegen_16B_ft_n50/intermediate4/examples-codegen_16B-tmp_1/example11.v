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
// out=0 in state 0 and out=1 in state 1
parameter zero = 1'b0, one = 1'b1;
always@(in, present_state)
	case(present_state)
	zero: begin // if present state is 0
	if(in == 1)
	next_state = zero;
	else
	next_state = one;
	out = 1'b0;
	end

	one: begin // if present state is 1
	if (in == 1)
	next_state = one;
	else
	next_state = zero; 

	out = 1'b1;
	end	
	endcase
always@(posedge clk or negedge reset)
begin
if (reset == 1'b0) // if reset=1, go to reset
	present_state <= zero;
elseendmodule
