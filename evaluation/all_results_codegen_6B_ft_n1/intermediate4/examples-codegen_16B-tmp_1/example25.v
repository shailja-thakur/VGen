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
localparam resolution = 5;
reg [4:0] shiftReg = 5'b0;
assign out = (present_state == 1'b0);
always @ (posedge clk)
begin
	if (reset == 1'b0)
	begin
	shiftReg[4:0] <= 5'b0;
	present_state <= 1'b0;
	end
	else
	begin
	shiftReg[4:0] <= next_state;
	present_state <= next_state;
	end
end
always @ (*)
begin
	case (shiftReg[4:0])
	5'b0: next_state = in ? 5'b0 : 5'b1; 
	5'b1: next_state = in ? 5'b1 : 5'b0; 
	default: next_state= 5end
endmodule
