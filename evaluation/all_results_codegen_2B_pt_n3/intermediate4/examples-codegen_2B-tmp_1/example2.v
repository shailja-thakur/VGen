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
wire transitions[2::];
void main()
{
    next_state <= 0;
    present_state <= 0;
    transitions[0] <= in;
    transitions[1] <= ~in;
    out <= 0;
    while (clk>=0)
    {
        while (reset == 0)
        {
            next_state <= 0;
            out <= 0;
            present_state <= 0;
        }
        next_state <= ~resets;
        if (in == 1)
        {
            next_state <= 1;
            out <= 1;
        }
        else
        {
            next_state <= 0;
            out <= 0;
        }
    }
}
), output=[output, presence_state](simple_fsm sim)
{
    while(sim.clk > 0)
endmodule
