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
assign out=(present_state == 1) ^ (in);
// the clock edge detector looks at the second rising clock edge of clock
// to reset the present state. The book has an errata where it falsely
// defines unknown in that code section to be out=0 always, regardless of in,
// regardless of clock. This isn't a problem with the idea of the design,
// but it makes the the about code in Model 2 in the same book errata.
// this changes state to reset for the zero interrupt.
always @ (posedge clk) begin 
	if(reset==1)
	present_state<=0;
	else
	present_state<=next_state;
end
always @(present_state, in, out)
	case(present_state)
	2'b00: 	begin
	if(next_state == 2 && in ==end
endmodule
