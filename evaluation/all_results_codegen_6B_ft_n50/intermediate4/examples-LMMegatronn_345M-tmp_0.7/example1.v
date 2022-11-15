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
// Set at transition 2 in state 1 and turn on transition 2 in state 0

always @(STATE)
    begin
    {next_state, in} = {in, ~present_state};
    {copy_state, out} = {next_state, in};
    {next_state} = {in, ~present_state};
    {case_state, in} = {in, ~present_state};
    {~present_state, in} = {in, ~present_state};
    {next_state, in} = next_state;
    {overflow, next_state} = {in, in} ^ (~present_state);
    {out, out} = next_state;
    end
endmodule
