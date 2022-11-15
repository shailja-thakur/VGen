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
// out=1 in state 1 and out=0 in state 0
reg data_out;
always @(posedge clk)
begin
if (reset==1'h1)
//When reset is high, set state and output to 0
begin
present_state<=1'b0;
data_out<=1'b0;
end
else
//If reset is 0, check the state and data input
begin
case(present_state)
1'b0:
//If the present state is 0, check the in data input
begin
if(in==1'h1)
//If the data input is 1, stay in state 0
begin
next_state<=1'b0;
data_out<=1'b0;
end
else
//If the data input is not 1 go to state 1
begin
next_state<=1'end
end
end
end
endmodule
