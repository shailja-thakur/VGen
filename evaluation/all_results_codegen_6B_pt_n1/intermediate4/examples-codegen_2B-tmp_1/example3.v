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
// Present state assign
parameter s0 = 0, s1 = 1;
// Next state assign
always @(posedge clk, posedge reset)
begin
if(reset)
present_state <= s0;
else
present_state <= next_state;
end
// Moore FSM
always @(present_state, in)
begin
case(present_state)
s0:
begin
next_state <= (in)? s0 : s1;
out <= (in)? 0 : 1;
end
s1:
begin
next_state <= (in)? s0 : s1;
out <= (in)? 0 : 1;
end
default:
begin
next_state <= s0;
out <= 0;
end
endcase
end
endmodule
