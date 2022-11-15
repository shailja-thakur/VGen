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
always @(posedge clk)
if (!present_state) {
    if (reg ~= 0) { // set next_state to the appropriate state based on the logic with the Wireshark file
        next_state = 0;
    }
}
else if (reg = 1) { // if next_state is 1, output 1 in state 1
    out = 1;
    next_state = 1;
}
else if (reset) { // reset the state machine
    out = 1;
    next_state = 1;
}
else if (in) { // otherwise, output 0
    out = 0;
    next_state = 1;
}
else { // output 0 in state 0. Out in state 0
    if (out = 1) { // step 4 of 7. Go to state 1 and change out. Out is 0 in state 0 if clocks % 2endmodule
