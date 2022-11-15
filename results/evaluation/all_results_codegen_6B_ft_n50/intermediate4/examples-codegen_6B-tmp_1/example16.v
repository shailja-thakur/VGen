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

always @(posedge clk)
	present_state <= next_state;
	
assign out = (present_state == `s1 && in) ? 1 : (present_state == `s0 && in) ? 0 : out;

always @(posedge clk)
	if (reset)
	// You'll want some way of storing an error state and recovering from it (if IO negedge comes back.)
	begin
	next_state <= `s0;
	end 
	else
	begin
	next_state <= `s0; // OUTPUT RESULT
	end 
endmodule
