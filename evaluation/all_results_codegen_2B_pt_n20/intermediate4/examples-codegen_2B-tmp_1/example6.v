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
machine simple() 
{
  always @ (posedge clk, reset)
  begin
  // Latch next_state_in=in in state 1
    next_state_in= in;
	present_state = present_state & (next_state | (!next_state));
	if (~next_state != prev_next_state)
	  out = 1;
	prev_next_state = next_state | (!next_state);
  end
}
 // Open product test
  // In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
 // In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
  // out=1 in state 0 and out=0 in state 1
  combinational fsm0(clock);endmodule
