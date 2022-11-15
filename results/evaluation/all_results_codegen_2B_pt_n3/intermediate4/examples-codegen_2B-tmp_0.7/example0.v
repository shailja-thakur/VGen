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
wire in_state;
wire next_state_0;
wire next_state_1;

always @*
begin
    // do nothing if reset=0
    if (reset == 0) begin
        reset <= 1;
    end

    // do nothing if clk=0
    if (clk == 0) begin
        clk <= 1;
    end

    // if reset=0, and clk=0, and in=0, transition to state 0
    if ((reset == 0) and (clk == 0) and (in == 0)) begin
        // if next_state_0=0, then set next_state_0 to 1;
        if (next_state_0 == 0) begin
            next_state_0 <= 1;
        end
        // if next_state_1=0, then set next_state_1 to 1;end
end
endmodule
