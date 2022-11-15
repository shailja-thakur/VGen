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
always @(posedge clk or posedge reset)
// port 0: each state may change, when pin in is high
if (reset or clk) {
    out = 0;
    present_state = 0;
}
else {
    out = 0;
    next_state = 0;
}

always @(posedge clk or posedge reset)
// port 1: one of the states become 0 when input changes, then pin in changes
if (reset or clk) {
    boolean able_to_go_to_state_1 = false;
    while (in) {
        /// Each time, pin in is low and out is high
        wait(1us);
        out = 0;
        if (able_to_go_to_state_1) {
            next_state = 1;// if successful
            able_to_goendmodule
