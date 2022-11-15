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
initial {
	present_state = 0;
	next_state = 0;
}
always @(posedge clk or posedge reset) begin
	if (reset) begin
		present_state <= 0;
		out <= 0;
		next_state <= 0;
		// outEnd <= 0;
	end else if (present_state == 0) begin
		if (in) begin
			present_state <= 1;
			out <= 0;
		end else begin
			next_state <= 2;
		end
		//else if portInput.in_2) begin
		//	portInput.in_2 <=0;
		//end
	end else if (present_state == 1) begin
		if (in) begin
			present_state <= 1;
			out <= 1;
		end else begin
			present_state <= 0; //0end
end
end
endmodule
