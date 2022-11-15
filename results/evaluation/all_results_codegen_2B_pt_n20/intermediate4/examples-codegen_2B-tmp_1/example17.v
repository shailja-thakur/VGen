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

always @(posedge clk, posedge in, posedge reset) begin
  if (reset and reset is true) begin
    out = 0;
    next_state = "state1";
  end
  else
  if (in is 1) begin
    if (present_state=="state0") begin
      out = 1;
      next_state = "state1";
    end
    if (present_state=="state1") begin
      out = 0;
      next_state = "state0";
    end

  end
  else
  if (in is 0) begin
    if (present_state=="state0") begin
      out=1;
    end
    if (present_state=="state1") begin
      out=0;
    end
  end
  present_state = next_state;
end
endmodule
