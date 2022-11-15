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
// Set next state to 0 in the input in and to the output in the previous state.
reg [1:0] next_state;
// State changes in the previous state.
always@(state or in)
begin
   case (state)
      0 : next_state = in ? 1 : 0; // A
      1 : next_state = in ? 2 : 0; // B
      2 : next_state = in ? 3 : 0; // C
      3 : next_state = in ? 4 : 0; // D
      4 : next_state = in ? 5 : 0; // E
      5 : next_state = in ? 6 : 0; // F     
      6 : next_state = in ? 7 : 0; //end
endmodule
