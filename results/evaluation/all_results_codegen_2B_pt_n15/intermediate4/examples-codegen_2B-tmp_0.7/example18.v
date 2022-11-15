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
reg [1:0] state;
assign present_state = state<=0 ? state<=0 : state>0 ? 1 : 0;
assign next_state = (state<=0 ? state<=0 : state>0 ? 1 : 0);
always @(posedge clk)
{
    if (state == 0)
        out = (reset) ? 0 : 1;
    else
        out = (reset) ? 0 : 1<<(state-1);
}
initial begin
    state = 0;
    next_state = 0;
end
always @(posedge clk)
{
    if (reset)
        next_state = (reset) ? 0 : 1;
}
initial begin
    state = 0;
    next_state = 0;
end
initial begin
    state = 1;
    next_state = 1;end
endmodule
