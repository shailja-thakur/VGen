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
// Each state has a next state

always @(posedge clk)
{
	// print("clk: " + to_string(clk));
	if (clk == 1)
	{
		if (reset == 1)
		{
			reset = 0;
		}
		else
		{
			next_state = 0;
		}
	}

	if (reset == 1)
	{
		// print("reset: " + to_string(reset));
		next_state = 0;
	}
	
	// print("next_state: " + to_string(next_state));
	out = out & (present_state == next_state);
	present_state = next_state;
}

endmodule
