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

// When input changes, the two current states are updated.
// Since the input of next_state is dependent on the current state, this
// method will not be very good if your input can change at random,
// but it will handle the most common cases of changing inputs.

always @ (posedge clk, posedge reset) begin
	if (reset)
	begin
	present_state <== 0;
	next_state <= 1;
	out <= 0;
	end
	else
	begin
	//we proceed to next state if we are in state 0, and the input is 2 or more. Maybe make next state into a reg, and move the if statement into the always @ (posedge clk, posedge reset)
	if(present_state == 0 && next_state == 1 && in==2)
	begin
	next_state <= 0;
	outend
end
end
endmodule
