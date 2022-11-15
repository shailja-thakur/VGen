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
always clk? next_state' = in;
end
process "change_fsm" begin
if(~present_state) begin
    out' = 1;
    next_state <= 1;
end else begin
    out' = in;
    next_state <= 0;
end end
end
// Design a Coffee state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module coffee_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
state active, stop_signaled;
reg next_state;
wire stop; // Signal to stop the "core" routine which should not be called in process "mailbox_in" ...
wire core_timeout; // ... and take it inside process "core_timeout" ...
generate alwaysendmodule
