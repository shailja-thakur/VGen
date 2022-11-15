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
// equation for next state and present state
next_state = present_state;
assign out = present_state;
always@(posedge clk)
begin
if (reset == 1)
present_state = 0;
else
present_state = next_state;
end
always@(in or present_state)
begin
// State 0
if (present_state == 0 && in == 1)
next_state = 1;
// State 1
if (present_state == 1 && in == 0)
next_state = 0;
end
endmodule
