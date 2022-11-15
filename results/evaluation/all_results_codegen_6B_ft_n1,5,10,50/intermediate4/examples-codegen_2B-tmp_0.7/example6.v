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
// State 0 is the initial state
reg [1:0] state;
assign next_state = (in == 1) ? (state == 0) ? 1 : 0 : (state == 1) ? 1 : 0;
assign state = state + 1;
always @(posedge clk)
begin
if (reset == 1)
  state = 0;
end
end
end
end
endmodule
