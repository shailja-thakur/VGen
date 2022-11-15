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
// When making a transition in the Moore state machine, the next state is set to the next
// input asserted on the zeroth cycle. If the next input is asserted on the next positive clock edge, 
// the next_state is set to 1. If the input is deasserted on the next positive clock edge, next_state
// is set to 0. Over and over again, the contents of next_state are checked to see if the program is 
// still in State 1. If so, then FALSE is returned. If FALSE, TRUE is returned.
always @(posedge clk)
begin : FSM 
	if (reset) // if the fsm is reset, or the input is changed
	begin 
	next_state <= in;	 // Register the input on the next positive clock edge
	present_state <= next_state; // Register the next state on rising edges of the clock
end
end
endmodule
