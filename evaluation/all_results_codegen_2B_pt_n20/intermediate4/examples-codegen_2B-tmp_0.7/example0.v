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
state_transition t0() {
	if (in) {
		if (!present_state) {
			out = 1;
			present_state = 1;
		}
		return state_transition(next_state);
	}
	return state_transition(present_state);
}
state_transition t1() {
	if (in) {
		if (!next_state) {
			out = 0;
			next_state = 0;
		}
		return state_transition(next_state);
	}
	return state_transition(next_state);
}

module simple_fsm_testbench()
{
  wire[2:0] clk_out;
  wire[2:0] reset_in;
  input[2:0] clk_in;
  output[2:0]endmodule
