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
void main(void) {
	fsm f = [in](fsm f){
		if(f.in){
			if(f.clk==1)
				f.out = 1;
			f.next_state=0;
		}
		else {
			f.out = 0;
			f.next_state=1;
		}
	};
	fsm n = [in](fsm n){
		if(n.clk!=1)
			n.out = 1;
		n.next_state=0;
	};
	reset = 0;
	// module fsm_design_behaviour(clk, reset, in, out);
	// Set the external signals clk and reset but not in or out to pull global clocks (+1111 + 1 because senseout lines are +1)
	in = 0b10000000endmodule
