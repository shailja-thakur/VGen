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
if(reset)
present_state <= 0;
else if(in)
present_state <= 0;
else
present_state <= 1;
end


always @(posedge clk)
begin
if(reset)
next_state <= 0;
else
begin
case(present_state)
1: if(in)
next_state <= 0;
else
next_state <= 1;

0: if(in)
next_state <= 1;
else
next_state <= 0;

endcase
case(next_state)
0: #1 out <= 0;
1: #1 out <= 1;
endcase
end
end
endmodule
