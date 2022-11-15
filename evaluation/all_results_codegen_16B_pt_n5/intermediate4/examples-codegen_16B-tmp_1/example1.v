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
main()
{
	in = 'a';
	clk = p2 = p3 = p4 = p3 = 0;
	while (1) begin
	if (reset = '1') begin
		next_state = present_state = 0;
	end else begin
		while (clk = '1') // Sample clk
		begin
			if (in = '1') begin
				next_state = present_state; // stay in state 0
			end else begin
				next_state = present_state = 1; // go to state 1
			end // in = '0'
		end // while clk = '1'
		if (in = '1') begin
			out = 1; // out is 1 when in is 1
		end else begin
			out = 0; // out is 0 when in is 0
		end // in = '0'end
end
end
end
end
endmodule
