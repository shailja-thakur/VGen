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
void FSM()
{

// The algorithm of this state machine is perceived as the code below
// It is implemented in C-style
// a=out&&in
// b=!in&&!a
// !in&&conj(out)&&!a
// !in&&conj(!out)&&a
// Having present state P_a
// 1. present state must be P_a
// 2. there are no actionable input activations
// 3. there is a null action
void state0() {
	// 
	if ( !in&&out ) {
		next_state = 0;
	}
	// 
	else if ( !in &&(!out))  {
		next_state = 0;
	}
	// 
	else if (in && ( !!out || !!out) ) {
		next_state =endmodule
