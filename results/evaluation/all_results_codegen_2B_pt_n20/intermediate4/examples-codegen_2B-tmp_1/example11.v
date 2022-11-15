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
assign next_state=state_clock_qual(in)+state_modulo(0,1);
initial begin
w <= out&~present_state;
next_state <= reset&~in;
present_state = out&in+1;
always begin
w <= out&present_state;
next_state = reset&~in;
endcase

// input clock (0 or 1) is assumed equal for state 0 and 1 and asserts against other states
begin
// Itself is asserted
next_state <= next_state+(next_state==0||~in);
next_state <= ~((next_state==0||~in)&in);
endcase

always begin
#ifdef SANITY_CHECKS
check_state
// This process does not call other universe otherwise would be unsafe
if(in&&out)
{
pres(next_state);
end
end
endmodule
