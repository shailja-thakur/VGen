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
// If the next state is 0, then this is a terminal state. If the next state is 1, then this is a non-terminal state.

// State Memory
always @(posedge clk)
	if (reset)
	begin
	present_state <= `a;
	end
	else
	// You don't have to worry about concurrent activations in each input vector (or array).
	// Calculate next state
	case(present_state)
	`a: if (in) next_state = `a; else next_state = `b;
	`b: if (in) next_state = `a; else next_state = `b;
	endcase

// State output
assign out = (present_state == `a) ? 1 : (present_state == `b) ? 0 : (in) ? 1 : 0;

endmodule
