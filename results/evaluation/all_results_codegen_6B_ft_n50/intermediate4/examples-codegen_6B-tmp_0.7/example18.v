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

// Register output should be declared as OUTPUT and changed at the top-level of the module
// Note: I called out as OUTPUT at the top-level, but the output is really an internal wire.
assign out = (present_state==next_state) ? 1'b1:1'b0; 

// This transition condition should be the same in both states, however the state logic is different
// and you must remember to change the entire state to switch to the next state, not just the output.
always @(posedge clk)
	if(reset)
	begin
	next_state = 0;
	present_state = 1;
	end
	else
	begin
	next_state = (present_state == 0) ? 1 : ( (next_state == 1) ? 0 : 1 );
	present_state = next_state;
	end
endmodule
