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
assign present_state = {(in)?1'b1:1'b0, (reset)?1'b1:1'b0}; // Optional initializations
// next_state logic
always @(posedge clk, posedge reset)
begin
	if(reset) // Triggered reset
	 present_state <= {(in)?1'b1:1'b0, (reset)?1'b1:1'b0}; // Be careful about initializations here
	else
	 begin
	case(present_state)
	 16'h0001: next_state <= 16'h0002; // When s1 is 0 and s0 is 1 (in state 0), act like state 0
	 16'h0002: next_state <= 16'h0002; // If s0 is 0, stay in state 0, 
	 16'h4406: next_state <=end
end
endmodule
