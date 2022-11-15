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
reg [2:0] state = 0;
initial begin
  out = 1;
  reset = 1;
  next_state = 0;
end
initial state_loop begin
  out = out ? 1 : 0;
  next_state = (present_state == 1 ? 0 : 1);
  next_state ? present_state = next_state : present_state = 0;
end
always @(posedge clk) begin
  if (reset) begin
    reset = 0;
    present_state = 1;
    next_state = 0;
  end
  next_state ? out = 1 : out = 0;
end
end
end
""")
endmodule
