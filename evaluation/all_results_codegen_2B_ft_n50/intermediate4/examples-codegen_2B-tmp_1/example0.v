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
always_comb
begin
case( present_state )
1'b0 : 
if(in)
status=present_state;
else
status=1'b1;
1'b1:
status=1'b0;
default: status=1'bx;
endcase
case(status)
1'b1:next_state = 1'b0;
1'b0:next_state=1'b1;
default:next_state=1'bx;
endcase 
end
// Giving outputs
always_ff @ (posedge clk or posedge reset) 
begin
if(reset)
begin
real_out=1'b0;
end
else
begin
if(present_state!=next_state) real_out=1'b1;
else real_out=1'b0;
endendmodule
