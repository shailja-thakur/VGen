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
parameter up = 1'b0, down =1'b1;
always @(reset, `UP, `down)
begin
	if(reset) begin
	present_state = up;
	next_state = up;
	end
	else begin
	case(present_state)
	up: if(`down) begin
	next_state = down;
	end
	else begin next_state=up; end
	case(present_state)
	down: if(`down) begin
	next_state = down;
	end
	else begin next_state =up; end
	endcase
end

always @(posedge clk)
begin
	if(reset == 1'b1) begin
	present_state = up;
	end
	else begin
	present_state = next_state;
	end
endendmodule
