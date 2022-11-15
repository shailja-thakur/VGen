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
  begin
    if (reset)
      next_state <= 0;
    else if (in)
      next_state <= 1;
    else
      next_state <= 0;
    present_state <= next_state;
  end
end

// The sample is quite simple, so use a simple state machine.
// The input comes in as 1/0. To get the output, just invert the input
// and shift the bit to the right.

// The output of the state machine goes out as 0/1.

// The state machine is redefined for the sake of the sample.
// Since we are using a simple state machine, we don't need to worry
// about the transitions.

// The output is also defined as 0/1.

// Include the module definition.
#include "simple_endmodule
