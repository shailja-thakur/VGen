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
{
    switch (present_state) {
    case 0:
        if ((reset | in) == 0) {
            next_state = 0;
            out = 1;
        }
        else {
            next_state = 1;
            out = 0;
        }
        break;
    case 1:
        if ((reset | in) == 0) {
            next_state = 0;
            out = 0;
        }
        else {
            next_state = 1;
            out = 1;
        }
        break;
    }
    present_state = next_state;
}
// This is the entry point for the application to place call backs

module main
{
    input [5:0] rd0, rd1, rd2, rd3, rd4endmodule
