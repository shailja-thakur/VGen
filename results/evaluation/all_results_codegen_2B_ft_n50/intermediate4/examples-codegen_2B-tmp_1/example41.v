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
// States are binary encoded. 000=state 0; 010=state 1; others=state 2
always@(posedge clk or posedge reset) begin
if(reset) present_state<=0;
else present_state<=next_state;
end
always@(present_state or in) begin
case(present_state)
	0:	begin
	if(in) next_state=1;	//Go to state 0 if in arrives
	else next_state=0;	//Stay in state zero if not in
	end
	1:	begin
	if(in) next_state=0;	//Stay in state zero if in arrives
	else next_state=1;	//Go to state 1 if not in
	end
	default:	next_state=2;	//Convenience so a state 2 can be added if desired
end
endmodule
