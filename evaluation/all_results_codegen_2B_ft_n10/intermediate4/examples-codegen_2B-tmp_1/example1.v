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
parameter state0=0, state1=1;

always @ (posedge reset or posedge clk)
if (reset)
present_state<=0;
else
present_state<=next_state;

always@( present_state or in )
case( present_state )
0 : begin
if(in) next_state=state1;
else next_state=state0;
end
1 : begin
if(in) next_state=state0;
else next_state=state1;
end
endcase

always @ (present_state or in )
case ( present_state )
state0 : out=1;
state1 : out=0;
endcase
endmodule
