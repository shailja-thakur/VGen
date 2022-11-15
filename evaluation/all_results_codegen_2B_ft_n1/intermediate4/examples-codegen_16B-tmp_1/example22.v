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

// Note, need to fix next_state generation for Last state in given case
always @(posedge clk)
begin
if (reset)
begin
present_state <= 0;
// A present state or Reset state value is given
end
else 
if (in)
begin
if (present_state == 0)
begin
next_state <= 0;
// A next state value and whatever part in is equal to x
present_state <= 0;
// A change to state 0 
end
else if (present_state == 1) 
begin
next_state <= 1;
// A next state of 1 and anything else
present_state <= 1;
// On the next clock the present state will change to 1
end 
end
else
begin
if (present_state == 0)
begin
next_state <= 0;
// Not changing the state
present_end
end
end
endmodule
