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
// out=0 in state 0 and out=1 in state 1
parameter state_0 = 0;
parameter state_1 = 1;
assign out = (present_state == state_0 && in == 0) || (present_state == state_1 && in == 1);
always @(posedge clk)
begin
if (reset)
present_state <= state_0;
else
present_state <= next_state;
end
always @(posedge clk)
begin
case(present_state)
state_0:
begin
if (in == 0)
next_state <= state_0;
else
next_state <= state_1;
end
state_1:
begin
if (in == 0)
next_state <= state_0;
else
next_state <= state_1;
end
default:
next_state <=end
endmodule
