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
always @(posedge clk or posedge reset) 
if (reset) 
present_state <= 0; 
else 
present_state <= next_state;
// The Moore output doesn't depend on the input in this state machine
always @(present_state) 
case(present_state)
0: out <= 0;
1: out <= in;
endcase
// The Moore state machine is created by declaring a always block.
// Complementary codes are shown below.
// Moore output depends on the present state and the input but not the next state.
// Complementary codes are shown below.
// bor(out, 1, out);
// if (reset)
// end
endmodule
