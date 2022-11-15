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
always @("posedge clk ")
simple_fsm() next_state <= ('0' => out = in & !reset);
always @("negedge clk or reset") begin
  present_state <= next_state;
end

// If another state were tracked:
// next_state <= ('0' => out = in) | ('1' => out = in ^ 1) | 'x';
// then current_state would be a bitmask where bit i set if the local
// state equals the polled state, 0 otherwise
// would output state identical to remote, but logic says default to 0
// would say > than slave had written > local had written, and thereby
// would break mode control between modes that change state.
// to allow this transfer, there would need to be another FSM wired to
// pull off the mode bits.
endmodule
