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
// Initially, we are in state 0 with input=1 and output=1
next_state st0 ;
pulse clk;
always @ (posedge clk) begin
    st0 .v = (in == 1) ? (st0 .v == 0 ? 1 : 0) : 0;
    if ((reset == 1) && (clk == 1)) {
    st0 .next=1;
    next_state .v = 0;
  }
	out = (st0 == 1) ? 1 : 0;
end
// in p s.t. st1.v .neq. st0.v in state 1, output is 0 if st0.v in state 0, 1 if st0.v in state 1
input reset, in;
assembly {
  	next_state .v = (st0 == 0) ? (res >= 0) : (inendmodule
