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
always @(posedge clk) begin
	if (reset)
	begin
	present_state <= 1'd0;
	end
	else
	begin
	present_state <= next_state;
	end
end
always @(present_state or in) begin
case (present_state)
1'd0: begin
	if (in)
	begin
	next_state <= 1'd0;
	end
	else
	begin
	next_state <= 1'd1;
	end
	end
1'd1: begin
	if (in)
	begin
	next_state <= 1'd1;
	end
	else
	begin
	next_state <= 1'd0;
	end
	end
endcase
end
assign out = present_state == 1'd0 ? 1: 0;
endmodule
