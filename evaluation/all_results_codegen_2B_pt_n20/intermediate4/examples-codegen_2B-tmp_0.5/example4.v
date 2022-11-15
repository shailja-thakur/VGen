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
reg [1:0] state;

always @(posedge clk)
{
    if(reset == 1)
    {
        reset = 0;
    }
    //in is 1, go to state 0
    if(in == 1)
    {
        state = 0;
    }
    //in is 0, go to state 1
    if(in == 0)
    {
        state = 1;
    }
    //out is 1 in state 0 and out is 0 in state 1
    out = (state == 0) ? 1 : 0;
}

always @(nop)
{
    next_state = state;
}

initial begin
    state = 0;
    next_state = 0;
end

initial begin
    next_state = state;
end

endmodule
