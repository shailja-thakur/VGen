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
// Set up input in that cycle.
always@(posedge clk)
begin
  next_state = 0;
  case(present_state)
    1'b0: if(in) begin
         next_state = 1'b1;
      end else begin
         next_state = 1'b0;
      end
    1'b1: if(in) begin
         next_state = 1'b0;
      end
  endcase
end
// If state changes, then report ack state to 0.
always@(posedge clk)
begin
  if(reset)
    state <= 1'b0;
  else
    state <= next_stateendmodule
