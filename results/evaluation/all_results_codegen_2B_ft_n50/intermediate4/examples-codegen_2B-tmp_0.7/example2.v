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
// next_state is the state which is being transitioned to
// present_state is the state which is currently present
// out is the output of the state being present
// clk is the clock signal for the state registering
// reset is the reset signal for the state registering
// present_state_register, next_state_register, out_register
// in_register
// clk_enable_register
// reset_register
initial
begin
present_state = 1'b0;
next_state = 1'b0;
out = 1'b0;
end
always @(posedge clk)
begin
if (reset)
present_state <= 1'b0;
else
present_state <= in;
end
always @(posedge clk)
begin
case (present_state)
0:
	begin
	if (in)
	next_state <=end
end
endmodule
