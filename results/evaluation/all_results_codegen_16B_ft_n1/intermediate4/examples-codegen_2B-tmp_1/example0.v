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
// The next_state is COME_FROM_0 if we are in state 0 waiting to go to 1,
// and RIGHT_TO_0 if we are in state 1 waiting to go to 0
// (Be careful not to NACK if we have been reset, instead reset after 
// determining next_state)
reg [2:0] cputick;
always @(posedge clk)
begin
	if (reset)
	begin
	present_state <= 0;
	cputick <= 0;
	out <= 0;
	end
	else
	begin
	present_state <= next_state;
	cputick <= cputick + 1;
	if (cputick == 3) cputick <= -1;
	else if (cputick == 2) cout <= 1;
	end
end
always @(present_state, inendmodule
