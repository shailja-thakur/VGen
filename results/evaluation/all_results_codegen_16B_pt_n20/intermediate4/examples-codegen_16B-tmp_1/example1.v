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
simple_fsm process(computing ring_address, start_processor);
begin
	present_state <= 0;	// Chassis = H
	start_processor <= t edge(in, msb);	// Test processor to start
	next_state <= (+ present_state) logic
	wait(0);	// Wait for reset to clear
	present_state <= present_state + 1;	// Change state to 1
	wait(clk);
	present_state <= present_state - 1;	// Change state to 0
	wait(clk);
	if ((next_state) != present_state)	// OUT Matching ifneeded
	{
		out <= 1;
	}
	if ((present_state) != next_state)
	{
		next_state <= present_state;	// Match next_state
	}
end
endmodule
