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
// Set to output in state 0 and turn to 0.
reg [1:0] next_state;
// Clock 0 to in next state
// Clock 1 to in next state
// Clock 2 to in next state
// Clock 3 to in next state
//
always @(posedge clk)
begin
  if (reset == 1'b1)
    begin
      next_state <= 0;
      previous_state <= 0;
    end
  else
    begin
      if (in == 1'b1 & next_state == 1'b0 & !(out == 1'b0 & !(transition_state == 1'b1 & state!=STATE_DONE))
        begin
          next_state <= 1;
end
end
end
endmodule
