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
assign out = present_state? 0:next_state ? 1 : in;
 
// The next state is a bit more complex. In state 0, if in=1 force next state to 0. If in=1 force next state to 1.
// If in=1 and next_state=0, and out=1 force next state to 0. If in=1 and next_state=1, and out=1, then set next state
// to 0.
// State transitions are not allowed without an input. In the simple example we can toggle next_state without
// a clock.
code = <=0; //equals <= when iterating through its pipeline; <=0 = when LHS expression; <=1 = when RHS expression; 0 = Systemtol 1st time we enter the <=0; 1 = Systemtol 1st time we enter the <=1
initial
	begin
	next_stateend
endmodule
