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
reg out;
initial
begin
// present state reg
	present_state = 1'd0;
// next state regs
	next_state = 1'd0;

	out = 1'd0;
end
always @(posedge clk, posedge reset)
begin
	if(reset)
	// upon reset, modified FSM will do...
	begin
	// present state reg
//god damnit c++ closure operator com
// they wrote c++ way again
	present_state = 1'd0;
// next state regs
	next_state = 1'd0;
	out = 1'd0;
	end
	else 
	begin
	// present state reg
	present_state = next_state;
// next state regs
	next_state = present_state;
// actions to take the FSM any the current state
	if(end
end
endmodule
