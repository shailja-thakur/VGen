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
always @(posedge clk) begin
    if (next_state==0 and in='1') out='1';
    if (next_state==1 and in='0') out='0'
end state 0 [out,clk,reset](reset='1') out='0'

    // out_state=0 is shown sent to the output
    next_state=(present_state==0 and next_state==0) or (present_state==1 and next_state==1), // 0,1,0=>0,0,1
    // out_state=1 is shown received by the observer
    present_state=(present_state==0 and next_state==0) or (present_state==1 and next_state==0),
end;
endmodule
