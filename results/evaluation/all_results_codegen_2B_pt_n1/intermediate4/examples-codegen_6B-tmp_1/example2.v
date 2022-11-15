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
  if (reset) begin
    begin
      present_state = 0;
      next_state = 0;
      out = 0;
    end
  end else begin
    if (in) begin
      present_state = next_state;
      next_state = (present_state == 1) ? 1 : 0;
      out = next_state;
    end
  end
end

// Or model it with one state, instead of two, and make out synchronous output
// Hold an instantiation of this FSMs when the module is instantiated. This leads to
// the maximum degree of freedom to the user when not strictly required.
#include "simple_fsm.v"
// Now define state assignments, leading to the 2 FSMs:
FSM fsm1(clk, reset, in,endmodule
