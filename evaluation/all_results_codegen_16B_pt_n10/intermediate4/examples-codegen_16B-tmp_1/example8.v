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
always
#(1.0/128.0)
begin
    present_state <= 0;
    present_state_next: switch(present_state)
    endcase
    next_state <= present_state
    for(i=0 ; i<=4096; i=i+1)
    {
        next_state_next: switch(next_state)
        endcase
        next_state = i%2;
    }
    out <= present_state_next;
end
endmodule
