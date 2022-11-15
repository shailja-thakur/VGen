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
assign out = present_state[1] ^ in;
always @(posedge clk or posedge reset)
	if (reset)
	begin
	present_state <= `A;
	next_state <= `A;
	end
	else
	present_state <= next_state;
always @(posedge clk)
	case(present_state)
	`A: if (in) next_state = `B; else next_state = `A;
	`B: if (in) next_state = `B; else next_state = `C;
	`C: if (in) next_state = `A; else next_state = `D;
	`D: if (in) next_state = `B; else next_state = `A;
	endcase
endmodule
