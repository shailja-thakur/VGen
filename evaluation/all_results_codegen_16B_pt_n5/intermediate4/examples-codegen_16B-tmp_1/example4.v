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
always @(posedge clk or posedge reset) begin
    if (reset) present_state <= 0;
    else if (in)    present_state <= 1;
    else            present_state <= 0;

    // Reset state to 0 on posedge reset
    if (reset)     next_state <= 0;
    // present_state never transitions to 0
    else if (present_state == 0)             next_state <= present_state;
    // present_state = 1 -> 1
    else if (present_state == 1 and in)     next_state <= 1;
    // present_state = 1 -> 0
    else if (present_state == 1 and not in) next_state <= 0;
    // present_state = 0-> present_state + 1
    else if (present_state == 0 and present_state + 1 > 1) next_state <=end
endmodule
