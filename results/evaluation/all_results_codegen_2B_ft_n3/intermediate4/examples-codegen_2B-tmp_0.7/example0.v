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
// FSM should be a combinational circuit with two inputs and two outputs
parameter s0=2'b00, s1=2'b01, s2=2'b10;
// Next State Combinational Logic
always@(present_state or in or reset)
begin
	if (reset==1'b1) present_state <= s0;
	else present_state <= next_state;
end
// State Sequential Logic
always@(posedge clk)
begin
	if (reset==1'b1) next_state <= s0;
	else next_state <= present_state;
end
// Output Combinational Logic
assign out = (present_state==s1)&&(~in);
endmodule
