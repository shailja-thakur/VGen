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
assign out = present_state & (in);
always @(posedge clk or posedge reset) 
	begin 
	if (reset) // if this is a reset, state goes to initial state
	 present_state <= 1'b1;
	else 
	 present_state <= next_state;
	end
always @(present_state or in) // the next state is set asynchronously
	case(present_state)
	1'b0: next_state = (in)? 1'b1 : 1'b0;
	1'b1: next_state = ((in)?1'b0 : 1'b1);
	endcase
endmodule
