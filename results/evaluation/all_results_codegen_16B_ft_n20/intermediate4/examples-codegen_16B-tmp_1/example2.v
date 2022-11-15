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
reg [1:0] fsm_reg;

always @(posedge clk)
present_state <=next_state;

always @(in, present_state)
case (present_state)
2'b00: begin if (in) fsm_reg <= 2'b00; else fsm_reg <= 2'b01; end
2'b01: begin if (in) fsm_reg <= 2'b00; else fsm_reg <= 2'b10; end
2'b10: begin if (in) fsm_reg <= 2'b00; else fsm_reg <= 2'b11; end
2'b11: begin if (in) fsm_reg <= 1'b00; else fsm_reg <= 1'b11; end
default: fsm_reg <= 1'b00;
endcase

assignendmodule
