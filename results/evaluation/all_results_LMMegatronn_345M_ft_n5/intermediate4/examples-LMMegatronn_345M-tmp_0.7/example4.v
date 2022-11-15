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
// Set to 1 if input in=1, then state 0 in=0

initial begin
  state1 = state1;
  state0 = 0;
  next_state = 0;
  next_state = 0;
  next_state = 0;
  in = 0;
  out = 0;
  found_state = 0;
end

always @(posedge clk) begin
  if(reset) begin
    state1 = 0;
    state0 = 0;
    next_state = 0;
    in = 0;
    found_state = 0;
  end
  else begin
    case(state1)
      state0: begin
        // If in = 1, then next state is 1.
        ifend
end
end
endmodule
