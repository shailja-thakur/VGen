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
// After reset, all states are in state 0
always @(posedge clk)
begin
    if (reset)
        present_state = next_state = 0;
    else
        if (in == 1)
            next_state = 0;
        else
            next_state = 1;
    out = next_state;
end


// In state 0 and in=0, all transitions are valid. In state 1, if in=0, go to state 0.
always @(posedge clk)
begin
    if (reset)
        present_state = next_state = 0;
    else
        if (in == 0)
            next_state = 0;
        else
            next_state = 1;
    out = next_state;
end

// In state 0 and in=1, all transitions are valid. In state 1, if inendmodule
