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
begin
    if (reset)
    begin
        next_state <= 0;
    end
else
begin
    if (next_state==1) next_state <= 0;
    else next_state <= 1;

    present_state <= next_state;
end
end

// The Simple FSM must act as a 1-to-1 encoder
// of the next_state bits in the data stream.
// Given the present state, we want to convert it into a next
// state, which must be sent to output.
reg bits;
rect(199);
always @(posedge clk)
begin
    bits <= (present_state+1) & 0x0000077; //converts state (uint8) to bits hex value (uint2)
    clk <= 1;
end
begin
    // signal next_end
endmodule
