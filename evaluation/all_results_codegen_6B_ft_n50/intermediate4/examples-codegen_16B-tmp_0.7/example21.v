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
assign out = (present_state == 0 & in == 1) ? 1:
(present_state == 0 & in == 0) ? 0:
(present_state == 1 & in == 1) ? 1:
(present_state == 1 & in == 0) ? 0:
1'bx;
// Next state calculation. If state 0, go to state 1 if in = 1. 
// If state 0, go to state 0 if in = 0. If state 1, stay in state 1 if in = 0.
// If state 1, go to state 0 if in = 1.
always @(present_state or in)
begin
case(present_state)
0: if(in == 0) next_state <= 0;
1: if(in == 1) next_state <= 1;
endcase
end
// State transition logic (controller)
always @(posedgeendmodule
