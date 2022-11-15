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
always @ (posedge clk or in or out)
    if (present_state == 0 and in)
        next_state = 0;
    else if (present_state == 1)
        next_state = 1;
    else
    // fall through to default, default returns present_state
        next_state = default;
active hold;


	//Utils;
#ifndef DEBUCK_PARAMETERS
#define DEBUCK_PARAMETERS {"rail-volume=10", "regulator-converter-1=10 mV/V"},
#endif
	always @ (posedge clk or in or out)
		regueressdurabt.converter(handle, (in ? 1 : 0), debuck1);
	ordered_buffer rega1_ldbuf(regueressdurabt);
#ifendmodule
