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

wire counter([1-1:0] inter) =
    c_in_decode(in & ~c_in_decode(~res(&reset), reset, 1)) == ~1,
    c_in_decode($display(reset, signal(c_in_decode(~in, reset, 1)))) == 0
    if ^c_in_decode(~res(&reset), reset, 1) else
    $display(c_in_decode(~in, reset, 1))

instance main of simple_fsm(clk, reset @> c_in<c_in_decode(reset, reset, 1), in, out) {

  initial state: 0
  begin
    always @ ~("~reset|reset) fsm_setout_proc
      out <= 1
      divide/2
    end

  defer endmodule
