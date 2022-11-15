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
// In state 0, if out=1, reset and go to state 1. In state 1, if out=1, go to state 1.

// state 0:
//  0      1      0      1      0      1
//  output out
//  in      in      in      in      in
//
// state 1:
//  0      1      0      0      0      0
//  output out
//  in      in
//

initial begin
    next_state = 0;
    present_state = 0;
    in = in;
    out = out;
    out = 1;
    next_state = 0;
end

void main()
{
    forever
    {
        if (in == 1)
        {
            out = out;
            next_state = next_state;
        }
        else
        {endmodule
