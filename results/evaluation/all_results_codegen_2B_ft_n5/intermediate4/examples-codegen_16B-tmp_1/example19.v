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
// reset is a reset
//
// I used the struct def statement to declare the STATE and NEXT_STATE as types.
//A bunch of wires declared to not conflict with one another.
// 
//Next State and State Variables for the FSM
//
/*
 present_state: There are four possible states that the system could be in.
 
 0) The system is in a reset state. 
 1) The system is in a ready state. 
 2) The system is in an operating state. 
 3) The system is in an enable state.
 
 */

//Next state , State variable initializations.

initial
	begin
 
 
//States 0, 1, 2, 3 defined as Case statements
//State 0 and State 1 are the reset and ready states
	case(present_state)

0:	begin
	if(reset)
 
end
end
endmodule
