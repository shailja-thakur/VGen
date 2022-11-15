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
assign present_state = {reset, in};
always @(present_state) begin
case({reset, in})
2'b00: next_state = 1'b0;
2'b01: next_state = 1'b0;
2'b10: next_state = 1'b1;
2'b11: next_state = 1'b1;
default: next_state = 1'bx;
endcase
end
always @(posedge clk)
if(reset)
present_state = 1'b0;
else
present_state = next_state;
endmodule
