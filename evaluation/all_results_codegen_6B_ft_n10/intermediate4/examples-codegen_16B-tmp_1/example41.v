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
parameter S0=0, S1=1;
//Stablish the present state
initial
begin
present_state = S0;
end
//Next state
assign next_state = (reset) ? S0 : present_state;
always @(posedge clk)
begin
	case(next_state)
	// Default state is `S0, we only care about the receiving
	// and ignore data that is not being sent
	S0: //Data is always 0 when state is S0
	begin
	if(in)
	next_state = S0;
	else
	next_state = S1;
	end
	S1: //Data is 0 when state is S1
	begin
	if(in)
	next_state = S1;
	else
	next_state = S0;
	end;
	defaultend
endmodule
