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
initial state_machine()
{
    out = 1;
    next_state = 0;
}
initial begin
    reset <= 1;
    clk <= 1;
    in <= 1;
    present_state = 0;
end
initial state_machine()
{
    out = in;
    next_state = 2;
}
initial begin
    reset <= 0;
    clk <= 1;
    out <= 1;
    present_state = 0;
end
initial state_machine()
{
    out = 1;
    next_state = 1;
}
initial state_machine()
{
    out = 0;
    next_state = 0;
}
initial begin
    reset <= 1;
    clk <= 1;
    in <= 1;
    present_state = 1;
end
initial state_machine()
{
endmodule
