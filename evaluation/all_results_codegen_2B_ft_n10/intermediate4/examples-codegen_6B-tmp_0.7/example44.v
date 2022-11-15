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
// register stage for next state
always @(posedge clk or posedge reset)
	if (reset)
	// go to initial state
	present_state <= `A;
	else
	present_state <= next_state;
// next_state logic
always @(present_state or in)
	case(present_state)
	`A: if(in) next_state = `A;
	`B: if(in) next_state = `B;
	`C: if(in) next_state = `C;
	`D: if(in) next_state = `D;
	default: next_state = `A;
	endcase
assign out = (present_state == `C) || (present_state == `D);
endmodule
