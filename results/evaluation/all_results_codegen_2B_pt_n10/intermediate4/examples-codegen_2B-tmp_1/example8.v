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
datay_in mux;
datay_out state_to_datay_in;
datay_in state_to_datay_out;
delegate timestep_clock() {
  return clk;
}
delegate next_state() {
  unsigned x = (next_state == 0) ? (1) : (0);
  unsigned y = (x == 0) ? (1) : (0);
  return mux.read_datay(x,y);
}
delegate present_state() {
  unsigned x = (next_state == 0) ? (1) : (0);
  unsigned y = (x == 0) ? (1) : (0);
  return present_state.read_datay(x,y);
}
sig_wire edge_rising, next_edge, dataset_rising, input_risingendmodule
