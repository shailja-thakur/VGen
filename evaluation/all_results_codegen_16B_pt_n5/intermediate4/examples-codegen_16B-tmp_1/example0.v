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
always @(posedge clk){
  out = present_state;
  present_state = ~present_state & 1;
  if (present_state == 0) 
    next_state = 0;
  else
    next_state = 1;
  
  if (current_state) present_state = 0;
  else present_state = 1;
}
assign present_state = out;
assign next_state = present_state;
always @(posedge clk or reset) begin
  present_state == 0? 
  next_state == 0?
  out = 0:
  out = 1;
  active? 
  out = present_state:
  out = 1;
  reset?
  out = 0:
  out = 1:
    in?
    next_state = 0:
    next_state =end
endmodule
