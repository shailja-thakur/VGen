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

initial begin
	present_state = I("0", reset, in);
end

always @(posedge clk)
	start:
		if (reset == 0) begin
			present_state.next = I("0", reset, in);
			next_state = present_state.next;
			out = 1;
		end else begin
			next_state.next = I("1", reset, in);
			next_state = next_state.next;
			out = 0;
		end
		present_state.next = next_state;
end

always @(posedge clk)
	output:
		out <= present_state.out;
end
endmodule
