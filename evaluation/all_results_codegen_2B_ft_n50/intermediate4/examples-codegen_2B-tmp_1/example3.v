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
// next_state is updated directly to out during the always block below
// Present State FF
reg[1:0] PS;
always @(posedge clk)
begin
	if (reset) 
	begin
	// Use FF to summit state infos and allow for reset values
	PS <= 2'b00;
	end
	else 
	begin
	case (PS)
	2'b00: if (in) begin
	case ({PS, in})
	2'b00, 1'b0: PS <= PS;
	2'b01, 1'b1: PS <= 2'b10;
	2'b10, 1'b1: PS <= 2'b00;
	2'b11, 1'b1: PS <= PS; // Idle case
	2'b11, 1'b0: PS <= PS; // Idleend
end
end
endmodule
