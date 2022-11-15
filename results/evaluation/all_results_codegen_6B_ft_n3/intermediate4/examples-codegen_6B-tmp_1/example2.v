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
assign out = present_state&(in);
// This always block will "always" execute even if not explicitly called. The procedural block of code inside it will execute only once.
// Control always shift registers. 
// Note that the procedural block should have a named output.
always @(*) 
	begin: control_block
	case(present_state)
	// nets related to state 0
	0: next_state = (in)? 1:0;
	1: next_state = (in)? 1:0;
	// nets related to state 1
	2: next_state = (in)? 0:1;
	3: next_state = (in)? 0:1;
	endcase
	end 
always @(posedge clk or posedge reset)
	// First, deal with the reset
	if (reset)
	begin
	present_endmodule
