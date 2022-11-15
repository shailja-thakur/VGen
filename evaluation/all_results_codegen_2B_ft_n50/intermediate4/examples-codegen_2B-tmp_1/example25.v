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
always@(posedge reset or posedge clk) begin
	if(reset)
	// reset high only
	present_state <= 1'b0;
	else
	// all else, current state value is true
	present_state <= next_state;
end
always@(posedge clk) begin
	// next_state can be a function of previous state and input
	if(reset) next_state <= 1'b0;
	else case(present_state)
	// this should be pretty obvious lol
	1'b0: next_state <= (in)? 1'b1: 1'b0;
	1'b1: next_state <= (in)? 1'b0: 1'b1;
	default: next_state <= present_state;
	endcase
end
//output
always@(posedge resreset) begin
endmodule
