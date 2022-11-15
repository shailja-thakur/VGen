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
always @ (reset or posedge clk)
begin
	if(reset)
	begin
	present_state <= 0;
	end
	else
	begin
	present_state <= next_state;
	end
end

always @ (present_state or in)
begin
	case(present_state)
	0 : begin
	next_state <= in ? 0 : 1;
	out <= in ? 0 : 1;
	$display("%b->%b", present_state, next_state);
	if(in == 1 & out == 0) begin
	$display("State 0");
	end
	if(in == 0 & out == 1) begin
	$display("State 1");
	end
	end
	1 : begin
	next_state <= in ? 1 : 0;
	out <= in ? 1 : 0;
	end
end
endmodule
