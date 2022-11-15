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
assign out = (present_state == 0 && in == 1)?1:1;
always @(posedge clk)
begin
if (reset == 1)
present_state <= 0;
else
present_state <= next_state;
end
// compute next state
always @(present_state, in)
begin
case( {present_state,in } )
2'b00: next_state <= 0;
2'b01: next_state <= 1;
2'b10: next_state <= 0;
2'b11: next_state <= 1;
default: next_state <= 0;
endcase
end
endmodule
