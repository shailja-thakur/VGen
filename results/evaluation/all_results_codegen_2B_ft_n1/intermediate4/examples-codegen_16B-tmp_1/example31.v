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
always @(reset, in, present_state)
begin
	if (reset)
	begin
	present_state <= `INITIAL_STATE;
	end
	else
	begin
	present_state <= next_state;
	end
end
always @(*)
begin
	case (present_state)
	`INITIAL_STATE: 
	begin
	next_state <= `STATE_0;
	out <= `FALSE;
	end
	`STATE_0:
	begin
	next_state <= `STATE_1;
	out <= `FALSE;
	end
	`STATE_1: 
	begin
	next_state <= (in) ? `STATE_0 : `STATE_1;
	out <= (in) ? `TRUE : `FALSE;
	end
	default:
	begin
	end
end
endmodule
