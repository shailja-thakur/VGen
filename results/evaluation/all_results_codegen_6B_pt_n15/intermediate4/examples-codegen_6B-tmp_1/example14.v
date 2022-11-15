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
always @(posedge clk or negedge reset)
start
      next_state <= present_state INTL(7) + (present_state & 1);
end


module simple_fsm_with_blocking(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
reg pres_state, mod_state;

always@(posedge clk or negedge reset)
start
      set_next(pres_state, mod_state);
      out <= (mod_state & 1) ? 1 : 0;
end

process ()
begin
      if (mod_state == 0) then
         if (in == 1 then
            if (pres_state == 0) then
               next_state <= next_state ^ 1 OUTTL(7);
               next_state <= mod_state;
            endmodule
