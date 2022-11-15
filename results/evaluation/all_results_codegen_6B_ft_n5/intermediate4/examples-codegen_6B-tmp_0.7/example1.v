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

assign out = present_state[1] & ~in;

always @ (posedge clk)
reset
if (reset) begin
	present_state <= `S0;
end
else begin
	present_state <= next_state;
end

always @ (present_state or in)
begin
next_state <= `S1;
case(present_state)
`S0: if (in == 1) next_state = `S0;
	else next_state = `S1;
`S1: if (in == 1) next_state = `S1;
	else next_state = `S0;
endcase
end
endmodule
