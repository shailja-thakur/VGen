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
// present_state register is for reading
always @(posedge clk) {
bool	present;
// In state 0, next_state either 0 (never reach here) or 1 (become 1 in transition)
logic [1:0] next_state;
present = present_state.assign(in);
// 2 states are PODV
if ((present) == true) {
if (!next_state.to_int()) next_state = 1;
}
// For visualization
if (next_state) require (present,"Present state should be false, (in,out) = (0,1)");
if ((!present) && (next_state)) require (reset,"Reset should be 1 to trigger");
out = present_state.ival() == 0 && next_state.ival() == 0 ? 1 : present_state.ival();
}
endmodule
