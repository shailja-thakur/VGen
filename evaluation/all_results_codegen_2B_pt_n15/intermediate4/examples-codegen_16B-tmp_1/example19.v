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

// Following is the sequential always block
always @(posedge clk) begin
	if (reset == 0) present_state = 0;
	else present_state = next_state;
end

// The gysical output
assign out = ((present_state == 0) && (in == 1)) ? 0 : 1;

// You can use the following code to convert this back to a
// combinational always block

// Set the nextstate value given any change in the present state
always @(present_state) begin
	case(present_state)
	0: next_state = (~in) ? 0 : 1;
	1: next_state = (~in) ? 1 : 0;
	// Put your non-trivial committed code inside these case blocks.
	// default should never be called unless you populate the entire state 
	// space with cases.end
endmodule
