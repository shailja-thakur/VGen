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
// input_present :  inputs present from the input wire
presence input_present;
// internal calculate ps function
void calculate_state();
begin: present_state(0), next_state(0);
// reset state
if (reset == 1) begin calculate_state()
end
else begin calculate_state();
// When input is present, stay in state 1
if (input_present == 1) begin next_state = 1
end
// If input is not present, go to state 0
else begin next_state = 0
end
assign out = next_state;
always @(posedge clk) begin calculate_state();
end
`;
const test_fc = `
`;

QueriedMillsAsyncDriver = {
    Cas: {
        queries: {
            addrs: {
                [`read`]: {
                    op:end
end
endmodule
