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
assign out=(present_state==1'b1 && in==1'b1) || (present_state==1'b0 && in==1'b0);
always @(posedge clk or posedge reset)
	begin
	if (reset)
	next_state=1'b0;
	else
	next_state=present_state;
	case (next_state)
	1'b0: if (in==1'b1)
	next_state=1'b1;
	else
	next_state=1'b0;
	1'b1: if (in==1'b1)
	next_state=1'b1;
	else
	next_state=1'b0;
	endcase
	end
always @(posedge clk)
	present_state=next_state;endmodule
