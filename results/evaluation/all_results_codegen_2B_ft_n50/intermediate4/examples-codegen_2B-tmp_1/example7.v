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
reg [1:0] state;
// Edge triggered sequential code section
always @(posedge clk or posedge reset)
	if(reset)
begin
	present_state <= 0;
	selected_register <= 0;
	state <= 0;
// Special case: register behaviour for state = 2
	selected_register[0] <= 0;	
	check_sum[0] <= 0;
	check_sum[1] <= 0;
	check_sum[2] <= 0;
	check_sum[3] <= 0;
end
	else
begin
	present_state <= next_state;
	case(present_state)
	0:	begin
	check_sum[0] <= in;
	check_sum[1] <= check_sum[0];
	check_sum[2] <= check_sum[1];
	checkend
end
endmodule
