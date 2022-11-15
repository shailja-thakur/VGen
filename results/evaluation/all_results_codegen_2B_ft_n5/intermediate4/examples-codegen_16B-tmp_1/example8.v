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
parameter S0 = 0, S1 = 1;
always @(present_state, in) begin
case (present_state)
S0: if(in) begin
next_state <= S0;
out <=0;
end else begin
next_state <= S1;
out <= 0;
end
S1: if(in) begin
next_state <= S1;
out <= 1;
end else begin
next_state <= S0;
out <= 1;
end
default: next_state <= S0;
endcase
end
always @ (clk, reset, next_state)
case (next_state)
S0: present_state <= S0;
S1: present_state <= S1;
default: present_state <= S0;
endcase
endmodule
