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
assign out=present_state[1] ^ (present_state[0] & in);
// Register implementation
always @(posedge clk)
	if(reset)
	begin
	present_state <= `S0;
	next_state <= `S0;
	end
	else current_state <= next_state;
always @(current_state or in)
	case(current_state)
	`S0:if(in)
	begin
	next_state <= `S0;
	end
	else
	begin
	next_state <= `S1;
	end
	`S1:if(in)
	begin
	next_state <= `S1;
	end
	else
	begin
	next_state <= `S0;
	end
	endcase
// Output implementation
always @(current_stateendmodule
