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
parameter [1:0] s0=2'b00, s1=2'b01, s2=2'b10;
// State transition
always @(posedge clk)
begin
if(reset)
present_state <= s0;
else
present_state <= next_state;
end
// State transition
always @(present_state, in)
case(present_state)
s0: if(in)
begin
next_state = s0;
out = 0;
end
else
begin
next_state = s1;
out = 0;
end
s1: if(in)
begin
next_state = s2;
out = 0;
end
else
begin
next_state = s0;
out = 0;
end
s2: if(in)
begin
next_state = s0;
end
endmodule
