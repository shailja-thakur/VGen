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
function TransitionFunc(input new_state, read_out){ return transition_table[next_state]; }
// update the internal state value based on boolean out
function ctrl_update(){
    if( in == next_state ){
        next_state = !next_state;
        present_state = --next_state;
    }
}


// enable and connect the ctrl clock
assign ctrl_update() = ctrl_clk.posedge();
assign present_state = next_state;

// always in state 0 internally
assign next_state = 0;

// one input in/out and one output
// The logic function take as  inputs the new state, and the
// tail bool which is true after processing.
function logic() {
    TransitionFunc = TransitionFunc(in, present_state);
    out = Transitionendmodule
