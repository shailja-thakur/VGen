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

begin default_logic:
    case present_state, next_state <= 1'b0:
	      when reset=1\'b1,next_state=1'b0,out=1'b0;
	      when clk='1\'b1\'b1\'b0\'b0 out=unchanged;
	      when clk='1\'b1\'b1\'b0\'b1 out=next_state;
	      when clk='1\'b1\'b1\'b1\'b0 out=next_state;
	      when clk='1\'b0\'b0\'b1\'b0 out=out;
	      when clk='1\'b0\'b0\'b1\'b1 out=out;
	      when clk='1\'b0\'b1\'b1\'b0 out=out;
end
endmodule
