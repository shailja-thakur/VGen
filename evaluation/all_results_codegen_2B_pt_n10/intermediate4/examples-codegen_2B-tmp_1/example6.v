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
always@if(out != 1) state1=1 state0=1
always@if(in != 1) state1=1 state0=0
always@state1=1
always@if(clk == 1)
mode state
state 0 wait for clk=0
state 0: state0=0, state1=0 
current state 0 output=1, next state 0 is stored in reg next_state
state 1 wait for clk=1
state 1: state0=1, state1=0  
wait for clk=0
state 1 output=0 state0=1, state1=0
current sate 0 output=0, next state1 is stored in reg next_state
out=in, wait for next_state=1
state 0: state0=0, state1=1 
state 1: state0=1, state1=1
current stateendmodule
