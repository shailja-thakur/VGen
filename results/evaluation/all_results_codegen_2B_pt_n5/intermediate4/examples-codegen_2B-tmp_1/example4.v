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
// input state 0 -> state 1
assign next_state = (reset==1 && in==1 ? present_state : (reset==0 && in==0 ? present_state : next_state));
// state 0 -> state 1
assign previous_state = (reset==1 && in==0 ? present_state : previous_state);
assign causes_back_to_state1 = (reset==0 && in==1 ? out==1 : out==0 && in==1 ? 1 : prev_state==next_state ? 0 : 2);
// transition function
assign outputs = (reset==0 && in==1 ?  out==1 : out==0 && in==1 ? next_state : previous_state);
`
endmodule
