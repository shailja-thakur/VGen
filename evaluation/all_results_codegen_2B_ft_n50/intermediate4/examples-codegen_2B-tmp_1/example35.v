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
always @(in or present_state)
begin
case (present_state)
0: begin
if (in==1)
present_state <= next_state; 
else
present_state <= 0;
end
1: begin
if (in == 1)
present_state <= next_state;
else
present_state <= 0;
end
endcase
end
end
// Moore FSM
parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
always@(present_state or in)
case (present_state)
S0: begin
if (in)
next_state = S0;
else
next_state = S2;
end
S1: begin
if (in)
next_state = S1;
else
next_state = S2;
end
S2: begin
nextendmodule
