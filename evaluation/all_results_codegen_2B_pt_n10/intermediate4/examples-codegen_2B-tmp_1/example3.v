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
str state_var_map[] = { "none", "inactive", "active" };
signal active_state;
reg state, check;
always @ (clk, reset, in, out)
  begin
    active_state <= 0;
    state <= 0;
    in <= 1;
    active_state <= 0;
      
      modify (out) {
        if in = 0, state <= 1, next_state <= 't';
          next_state <= state_var_map[state];
      }
  end
  if !reset, begin
      out <= 1 and active_state = 0;
  end
  if active_state > 0, begin
    check <= 0;
  end
  
endmodule
