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
assign out = present_state;
always @ (posedge clk) begin
if (reset) begin
present_state <= 0;
next_state <= 0;
end
else begin
present_state <= next_state;
end
// State transitions
case (next_state)
1'b0 : next_state <= 1'b1 ; // Output 0 state
1'b1 : next_state <= 1'b0 ; // Output 0 state
default : next_state <= 1'bx ; //Evarily '1' state
endcase
end
// Next state and present state registers
always @ ( posedge clk ) begin
if (reset || next_state != present_state) begin
next_state <= 1'b0;
end
present_state <= next_state;
end 
endmodule
