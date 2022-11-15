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
// States are binary encoded
parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;
always @ (posedge clk or posedge reset)
// Combinational logic
if (reset)
	present_state <= s0;
else
	present_state <= next_state;
// Next state
always @ (present_state or in)
// State transition
case (present_state)
s0: begin
	if (in == 1)
	next_state <= s0;
	else
	next_state <= s1;
	end
s1: begin
	if (in == 1)
	next_state <= s1;
	else
	next_state <= s0;
	end
s2: begin
	if (in == 1)
	next_state <= s2;
	end
endmodule
