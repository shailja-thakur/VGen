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
// Register output depends on the value of present_state.
// The output is registered in an always block.
// The block is executed at the positive edge of the clock.
always @(posedge clk)
if (reset)
	present_state <= 0;
else
	present_state <= next_state;
always @(posedge clk)
begin
if (reset)
	next_state <= 0;
else
	begin
	case(present_state)
	0: next_state <= (in) ? 1 : 0;
	1: next_state <= (in) ? 1 : 0;
	endcase
	end
end
assign out = (present_state == 1);
endmodule
