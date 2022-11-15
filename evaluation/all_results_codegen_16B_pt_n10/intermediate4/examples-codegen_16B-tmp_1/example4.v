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
initial begin
    present_state = 0; // Reset state is 0
    next_state = 1; // State 1
    out = 1;
    if (reset)
        if (present_state != 0)
            next_state = 0;
    else // only present_state can go here
        if (in == 1)
            next_state = 0;
    always @(posedge clk) begin // Clock
        if (reset) {
            present_state = next_state; // Preset state
            out = 1;
        }
        else
            if (present_state == 0) {
                out = 1;
                if (in == 1) // transition to state 1
                    next_state = 1;
            }
            else if (present_state == 1) {
                if (in == 1) // no transition to state 1
                    if (end
endmodule
