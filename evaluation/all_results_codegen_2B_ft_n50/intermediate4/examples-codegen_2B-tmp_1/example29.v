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
parameter state_00 = 0;
parameter state_01 = 1;
always @(posedge clk)
begin: find_next_state
if (reset)
present_state = state_00;
else
present_state = next_state;
end
always @(present_state, in)
begin: determine_output
case (present_state)
state_00 : if ( in)
next_state = state_01;
else
next_state = state_00;
state_01 : if ( in)
next_state = state_01;
else
next_state = state_00;
default : next_state=state_00;
endcase
end
assign out = ( present_state == state_01)? 1:0;
endmodule
