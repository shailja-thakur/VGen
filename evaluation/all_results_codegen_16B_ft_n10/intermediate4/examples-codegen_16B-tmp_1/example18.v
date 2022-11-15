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
always@(posedge clk, negedge reset)
begin
if(~reset) //active low
begin
	present_state <= 7'd0;
end
else
begin
case(present_state)
	7'd0: // activation = .(1)
	begin
	if(in == 1)
	begin
	next_state <= 7'd0;
	end
	else
	begin
	next_state <= 7'd1;
	end
	end
	7'd1: //activation = .(1)
	begin
	if(in == 1)
	begin
	next_state <= 7'd1;
	end
	else
	begin
	next_state <= 7'd0;
	end
	end
	default: // one invalid state.
	begin
	next_state <= 7'd0;
	end
endend
endmodule
