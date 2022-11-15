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
// Reset register is connected to reset.sig and can be clocked in any state. Prepare state register for initial load. bit[0]=1, bit[1]=0 in state 0, bit[0]=0, bit[1]=0 in state 1. out=0 at initial load.
always @(posedge clk)
  if (reset)
    present_state = 0;  // or some value that is non zero
  else if(present_state == 0)
    present_state = ( in<1 ) && ~in<1; // second condition required because in<1 has no effect if in=1
  next_state = next_state(present_state);
  out = present_state;
endmodule
