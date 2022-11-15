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
initial state 0 := [in => 0, out => 1, present_state => 0];
initial state 1 := [in => 1, out => 0, present_state => 1];
// fsm requires external clock clock that is connected into here (by FSMAN.mac or CDNFAN.mac)
initial state fairy_fsm_0: [clk => clk, reset => reset];
initial state fairy_fsm_1: [reset => reset, clk => [7'h18:0x60:0 0], in => 0, out => 1, present_state => 1];
endmodule
