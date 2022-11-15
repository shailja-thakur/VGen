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
always@ (posedge clk)
    begin: next_state_decode
    if(reset)
        present_state &lt;= 0;
    else
      begin
        case(present_state)
        0: begin
        if(in==0)
            next_state = 1;
        else
            next_state &lt;= 0;
        end
        1: begin
        if(in==0)
            next_state = 0;
        else
            next_state &lt;= 1;
        end
    endcase
        if(present_state==0)
            out &lt;= 1;
        else if(present_state==1)
            out &lt;= 0;
        present_state = next_state;
    end
    end
endmodule
