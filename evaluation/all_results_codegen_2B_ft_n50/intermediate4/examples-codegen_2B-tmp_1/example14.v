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
// In state 2, if in=1, stay in state 0, out=1 in state 1.
// Simple two-directional mux
always @(posedge clk)
begin
	if (reset==1'b0)begin
	present_state = 0;
	next_state = 0;
	$display("Empty");
	end
	else begin
	case({present_state, in})
	2'b0_0: begin
	next_state = 0;
	$display("0 0, input: %b present state: %b next state: %b\n", in, present_state, next_state);
	end
	2'b0_1: begin
	next_state = 1;
	$display("0 1, input: %b present state: %b next state: %b\n", in, present_state, nextend
end
end
endmodule
