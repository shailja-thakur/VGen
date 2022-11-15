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
// out=1 in state 1 and out=0 in state 0
parameter INIT=1'b0;
parameter S1=1'b1;
reg [1:0] state;
//

always @(posedge clk)
begin
if(reset==1'b0)
	begin
	//next_state=1;
	present_state=INIT;
	state=0;
	end

else
	begin
	state=next_state;
	//present_state=next_state;
	end
end


always @(state or in)
begin
	//present_state<=next_state;
	case(state)
	INIT: begin
	if(in) begin
	next_state=S1;
	present_state=S1;
	end
	else begin
	next_end
end
end
endmodule
