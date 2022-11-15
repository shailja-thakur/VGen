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
assign present_state = 0;
assign next_state = 1;
assign out = out;
always @(posedge clk) if (clk > 100) start @(posedge clk)
{
    int in_state;
    assign in_state = in;

    while (!in_state)
    {
        // If transition not possible, exit
        int state = cast<int>(present_state);
        // Set output to match present_state
        assign out = state;

        // Set next_state to union with the input/rising edge result.
        next_state = state | in_state;
        // If then, go to next_state
        if (next_state != state)
        {
            break;
        }
        // Get System Clock for next iteration
        in_state = next_state;
    }endmodule
