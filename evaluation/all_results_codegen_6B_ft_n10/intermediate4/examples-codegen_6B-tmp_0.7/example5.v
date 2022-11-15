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

// This is a sequential logistic equation that generates a sigmoid function.
// The equation is: out=(exp(-(x-x0))+1)/2;
// Notice that the term (x-x0) is converted to a shifted binary representation.
// It works for 0<=x<=1 (but not for -1<=x<=0).

assign out=(present_state==0)?(!in):(exp(-(present_state-1))+1)/2;
//Note that if x<0, then exp will throw an error, so if in<0,
//then out<=0, else out<=1.

always @(posedge clk or posedge reset)
	begin
	if (reset)
	present_state<=0;
	else
	present_state<=next_state;
	end
endmodule
