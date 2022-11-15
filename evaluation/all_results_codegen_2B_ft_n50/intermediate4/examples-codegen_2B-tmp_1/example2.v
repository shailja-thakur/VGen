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
parameter A=0, B=1;
always @(posedge clk) begin
	if (reset==1'b1)
	present_state<=A;
	else
	present_state<=next_state;	
end
always @(present_state or in)
	next_state = 0;
	case(present_state)
	A: next_state = 0;
	B: next_state = 1;
	default: next_state = present_state;
	endcase

endmodule
