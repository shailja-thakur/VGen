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
always @ (posedge clk or negedge reset) begin
  case(reset)
    begin
      next_state <= 0;
      present_state <= 0;
    end
  case(1'b0)
    begin
      next_state <= 1;
      present_state <= 1;
    end
  case(1'b1)
    begin
      next_state <= 0;
      present_state <= 1;
    end
end

// Create a module that contains only the clocks and the outputs
module top(clk, reset, in, out);
  simple_fsm(clk, reset, in, out);
end

// Create a module that contains the clocks, the inputs and the outputs
module bottom(clk, reset, in, out);
  simple_fsm(clk, reset, in, out);
end

endmodule
