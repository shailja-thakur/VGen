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
// Instantiate the rest of the states you need. Each state contains a next_state wire
// by default.
reg_next_state regn (clk, reset, present_state, next_state);
initial
begin
present_state = 0;
next_state = 0;
end
always @ (posedge clk or negedge reset)
begin
if (!reset)
present_state=0;
else
present_state=next_state;
end
always @ (present_state, in)
begin
case (present_state)
0: if (in) next_state = 0;
else
next_state= 1;
1: if (in) next_state = 0;
else
next_state= 1;
default: 
	next_state = present_state;
endcase
end
endmodule
