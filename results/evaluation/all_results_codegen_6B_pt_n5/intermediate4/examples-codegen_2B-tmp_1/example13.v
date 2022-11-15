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
in<ias<0,2>> in_ig;
out<ias<0,2>> out_og;
connect(reset, reset.p) | (in_ig, in) | (out_og, out);
initial begin
  reg volatile unsigned _reset, _present_state;
  wire _next_state;
  _reset = 0;
  _present_state = 0;
  _next_state = 0;
  demand ( _present_state<=2 );
  _out_state0[0]<8=>0x00
  _out_state1[0]<7-4>=_out_state0[0]
  _out_state1[1]<7>=_out_state0[0]
  end
COMPONENT simple_fsm_b(clk, reset, in, out)
initial beginend
endmodule
