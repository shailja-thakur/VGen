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
begin
if reset = 0 then 
out <= out;// if reset, output outputs 3's
out <= 1;
else if clock = 1 then
next_state <= reset;// if input data was a 1, go forward to state 1
if in = 1 then
present_state <= state;
out <= state;
out <= 0;
end else if clock = 0 && in = 0 then
out <= next_state;// meesure the current input 1'state
next_state <= present_state;// return to the previous state    
end
end
endmodule
