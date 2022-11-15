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
// ... 1 and 0 in state 1 and 1 and 0 in state 0
// Assume no metastable states
assign present_state = reset ? 0 :
latch ? 1 : ctl ? 0 : present_state;
// Combo Logic Block
// Next state is present state in state 0, unless specified otherwise
// in this case, next state becomes the state after the clock edge.
always @(present_state, in)
begin : NC
	if(in ^ next_state)
	begin : NC1
	// incoming data is a transition away from current state
	end
	else
	begin : NC2
	// transitioning because of control signal
	end
end // always @ (present_state, in)
// Modified Logic Block
// Our next state is just the output of the combinator currently."
assign next_state = in ? comb : present_state;
// Assignend
endmodule
