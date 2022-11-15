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
always @ (posedge clk)
	if(reset) 
	begin
 	 next_state=0 ;
	 present_state=0;
	end
	else 
	begin
 	 next_state=0 ;
	 present_state=1;
	end
always @ (posedge clk) 
	present_state = s; 
// Each state s has nextstate s' if there is a transitions in the Moore transition diagram
// Diagram : https://hdlbits.github.io/diagrams/moore-tri-state-transitions-2/index.html
always @ (s, in)
	case(s)
	0 : if(in)
	begin
	next_state=1;
	out=1;
	end
	else
	begin
	next_state=1;
	out=0;end
endmodule
