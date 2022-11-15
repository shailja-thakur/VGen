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
  if (present_state == "0") next_state <= "1"; else next_state <= "0";
always @(conversion to comb)
  if (in) next_state = "1";
  else next_state = "0";
</pre>
The above code works on all platforms. To test, instantiate and
simulate it on its own:
.
\vert
The Moore state machine controlled using the standard FSM design.
.
If the conversion to comb is to be used for non-intuitive inputs, a
conversion from comb is needed. Here is another state machine, which is
expanded using the comb assembly function. The FSM design is simplified
to contain just the two outgoing transitions: in->1 or in->0 and
out->1 or out->0, both at the same rate.
.
.
\beginend
endmodule
