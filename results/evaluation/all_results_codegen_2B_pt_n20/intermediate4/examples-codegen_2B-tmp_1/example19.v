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
reg [1-1:0] initial[15:0];
reg [1-1:0] inflow;
reg [1-1:0] state_to_inflow;
reg [1-1:0] state_to_outflow;
reg [1-1:0] states_to_inflow_r;
reg [1-1:0] states_to_outflow_r;
begin:
if (reset == 1) begin
    out = simple_fsm_initial_state;
    next_state = 0;
end
    if ((clk == 1) & (reset == 1)) begin
        out = simple_fsm_inflow_table[in][state_to_inflow];
        next_state = transition_table[state_to_outflow_r][state_to_inflow_r][states_to_inend
end
endmodule
