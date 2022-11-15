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
// reset=1 is a special case that means reset the state to the beginning
parameter zero=0, one=1;
always @(present_state or in)
begin
case(present_state)
zero: if(in)
next_state=zero;
else
next_state=one;
one: if(in)
next_state=one;
else
next_state=zero;
endcase 
end
always @(posedge clk or posedge reset)
begin
if(reset)
present_state=zero;
else
present_state=next_state;
end
assign out=present_state==one;
endmodule
