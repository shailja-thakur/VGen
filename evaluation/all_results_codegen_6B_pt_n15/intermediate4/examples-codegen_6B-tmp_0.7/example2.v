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
always @(posedge clk or negedge reset)
  state <= next_state;

// simple_fsm modularized as input and output signals
mod wire state;

always @(posedge clk or negedge reset)
  state <= in;

// This module contains a state machine with two states 0 and 1, one input
// in, and one output out. The state machine gets a reset signal
// specified by reset. The reset signal is used to initialize the state
// machine to the initial state 0. The input signal in is used to determine
// the next state of the state machine.
module simple_fsm_controller(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In stateendmodule
