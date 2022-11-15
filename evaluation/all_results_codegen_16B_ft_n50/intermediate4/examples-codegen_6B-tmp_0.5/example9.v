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

// Register to store input and output
always @(posedge clk or posedge reset)
	if (reset)
	begin
	present_state <= 0;
	next_state <= 1;
	end
	else
	begin
	// Update state
	present_state <= next_state;
	end

// Next-state logic
always @(*)
	case(present_state)
	0: if(in)
	next_state = 0;
	else
	next_state = 1;
	1: if(in)
	next_state = 1;
	else
	next_state = 0;
	endcase
endmodule
