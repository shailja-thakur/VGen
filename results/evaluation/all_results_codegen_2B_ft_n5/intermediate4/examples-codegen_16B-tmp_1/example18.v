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
always@(present_state or in)
begin
	case(present_state)
	0:begin if(in)
	present_state<=0;
	else if(!in)
	present_state<=1;
	else 
	present_state<=present_state;
	next_state=present_state;
	end
	1:begin if(in)
	present_state<=1;
	else if(!in)
	present_state<=0;
	else
	present_state<=present_state;
	next_state=present_state;
	end
	default:
	next_state=0;
	endcase 
end
// Pfunction updates input and output during posedge clk
// out is output anytime and clk=1
Pfunction simple_fsm(out, next_stateendmodule
