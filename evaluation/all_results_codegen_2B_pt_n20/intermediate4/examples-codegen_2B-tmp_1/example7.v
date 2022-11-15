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
state0
always @(posedge clk)
action (out) {
  //std_logic_vector<7> detected_digit = in==0? posedge(next_state): nand(posedge(in), posedge(reset));
  out = in==1? 1: 0;
}

state1
always @(posedge clk)
action (out) {
  out = posedge(in)? 1: 0;
}

endmodule
