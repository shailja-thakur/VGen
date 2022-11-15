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
reg state_table[2][2] = {{{0, 0}, {1, 1}}, {{0, 1}, {0, 0}}};
reg table_address;
// state_table[state][in] is the next state
// state_table[state][out] is the output
// table_address is the table address
initial begin
    out = 0;
    next_state = 0;
    state_table[0][0] = 0;
    state_table[0][1] = 1;
    state_table[1][0] = 1;
    state_table[1][1] = 0;
    table_address = 0;
end
always @(posedge clk)
    if (reset == 1)
    {
        reset = 1;
    }
    else
    {
        if (in == 1)
        {endmodule
