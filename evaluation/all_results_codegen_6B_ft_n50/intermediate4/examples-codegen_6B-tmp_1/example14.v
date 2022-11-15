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
// The next state is an xor of the present state and the input.
// When the xor is 0, we transition to state 0. When it is 1, 
// we transition to state 1.
always @ (posedge clk or posedge reset)
begin
	if (reset)
	begin
	next_state <= 0;
	// Initialize to state 0
	end 
	else
	begin
	// Set the next state equal to the input
	next_state <= in;
	// If the input is a 1, then transition to state 1
	if (in) 
begin
next_state <= 1;
end
end
// Always output a 1 in state 1
// The output depends on the present state.
always @ (posedge clk or posedge reset)
begin
	if (reset)end
end
endmodule
