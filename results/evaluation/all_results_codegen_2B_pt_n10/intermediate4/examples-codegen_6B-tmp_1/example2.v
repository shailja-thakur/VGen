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
assign out = present_state[in]; // Because this is a 1 bit output it will have only 1 or 0 output
always @(posedge clk or posedge reset)
	if (reset) 
	begin
	present_state<= 2'b01; 
	end 
	else 
	// you can also use the procedural timescale in place of the assign
	// * this is a combinational process so you will want a combinational always block to keep everything away from the edge of the clock
	(present_state or in) == (next_state); // See https://www.geeksforgeeks.org/correspondence-of-clock-edge-in-the-simulation-of-a-fsm/
always @(*)
	case(present_state)
	2'b00: next_state = in ? 2'b00 : 2'endmodule
