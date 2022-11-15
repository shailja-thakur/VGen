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
always @(posedge clk)
    #4if (reset) = (present_state == 0)
        REGION 0
            #3out = out
        #3end
    else if (reset) req<=1
    else #3if (in) == (present_state)
        REGION 0
            next_state = 1
            #4out = 1
    else #3if (in) != (present_state)
        REGION 1
            next_state = 0
            #4out = 0
    #3else
        REGION 1
            #4out = 1
    #3end
    #0req<=!out
    REGION 0
        out = out
    #0end
endmodule
