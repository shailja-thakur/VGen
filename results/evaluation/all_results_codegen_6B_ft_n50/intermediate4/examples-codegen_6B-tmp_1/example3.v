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
assign out = present_state & in;
//we want to display next state, so we declare a data type for it
always @(posedge clk or posedge reset)
	if (reset)
	over;
	assign next_state = present_state & (~ in);
	always @(*)
	case(present_state)
	0:if(in)
	next_state = 0;
	else next_state = 1;
	1:if(in)
	next_state = 0;
	else	next_state = 1;
	endcase
initial
	begin
	 present_state = 0;
	end
endmodule
