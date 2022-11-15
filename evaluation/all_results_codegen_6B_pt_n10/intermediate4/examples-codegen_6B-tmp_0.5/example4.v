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
  if (reset) next_state <= 0;
  else next_state <= in;

always @(posedge clk) begin
  if (next_state) present_state <= 1;
  else present_state <= 0;
  out <= present_state;
end

// ----------------------------------------------------------------------------------------------

// Design a two-state finite-state machine with one input in and one output out.
// The FSM has two states, 0 and 1. The state is immediately updated based on the
// value of the input.
//
// The FSM is controlled by a clock and a reset.
// The FSM has a single input and a single output.
// The FSM is initially in state 0.
// The FSM transitions to state 1 when the input goes high.
// The FSM transitions back to state 0 when the input goes low.endmodule
