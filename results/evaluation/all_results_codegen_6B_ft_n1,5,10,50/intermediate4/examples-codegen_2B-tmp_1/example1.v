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

always @(*)
begin:
if (clk == 1) // input --> output
  out = in;
else
    if (reset == 1) // State 0 --> State 1
      next_state = 0;
    else
      if (in == 1) // State 0 --> State 1
        next_state = 1;
      else
        if (out == 1) // State 1 --> State 0
          next_state = 0;
        else
            next_state == reset;
end
// State 0 --> State 1, Next State if we receive 1
always @(-)
begin:
if (out == 1) // Transition in State 0 --> State 1
  next_state == 1; // Next State
end

always @(reset)
begin:
if (out == 1) // State 1 --> State 0
  next_state = 0;
end

endmodule
