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
// Set to output in=1 in state 0 or 1 otherwise. But if in the begin control state is 0 as soon
// (Previous input is until it's state it's state changes its state).
//(* Another is not because very sensitive inputs are true because the output is only possible to 0.
reg reserve_state;
initial reserve_state = 0;
// If no input is not seen, then the next state will be 0.
initial reserve_state = 1;
// Set to output in states 1, if all other input is neither in the state.
assign out = (present_state == 1) ? 0 : reserve_state;
// Set to output in state 1. Reads are both kinds of state 1.
// After 1, this completes is detected and can be processed by transition level


always@(posedge clk)
begin
  if(reset) begin
    state <= 1end
end
endmodule
