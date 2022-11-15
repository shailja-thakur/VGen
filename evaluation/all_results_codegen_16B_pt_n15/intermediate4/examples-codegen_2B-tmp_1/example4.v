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
parameter s0 = 0, s1 = 1;
// both present state and next state need to be reg since Moore is used
always @(posedge clk,posedge reset)
begin
if(reset)
present_state <= s0;
else
present_state <= next_state;
end
always @(present_state, in)
begin
case(present_state)
s0:if(in)
next_state <= s1;
else 
next_state <= s0;
s1:if(in)
next_state <= s0;
else 
next_state <= s1;
default:
next_state <= s0;
endcase
end
always @(present_state)

case(present_state)
s0:
out=0;
s1:
out=1;
endcase

endmodule
