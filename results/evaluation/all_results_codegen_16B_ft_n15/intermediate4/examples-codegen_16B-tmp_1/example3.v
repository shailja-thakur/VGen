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
reg [1:0]INST;
always @(posedge clk)
begin
INST = next_state;
case(INST)

"00": begin
out = 0;
end

"01": begin
out = 0;
end

"10": begin
out = 0;
end

"11": begin
out = 1;
end

default: out = 0;
endcase
end

// always @*

// State transition code
always@(in, present_state, next_state)
begin
	case({present_state,in})
	0,0: next_state <= 0;
	0,1: next_state <= 1;
	1,0: next_state <= 0;
	1,1: next_state <= 1;
	endcase

end

always@(posedge clk)
endmodule
