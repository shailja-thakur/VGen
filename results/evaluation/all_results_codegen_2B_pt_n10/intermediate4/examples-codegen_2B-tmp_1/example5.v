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
always @(posedge clk)
  if (posedge clk) { // Update state transition flag
    // TODO Correct output?
    // TODO Correct input?
    // TODO Demand deadtime
    next_state = (next_state == 0) ? 1 : 0;
  }
  out = next_state;            // Write new state to output signal
  next_state = (next_state == 0) ? 1 : 0; // Update state to new state
always @ (no_posedge clk)    
  #pragma HLS LP parallel
endmodule
