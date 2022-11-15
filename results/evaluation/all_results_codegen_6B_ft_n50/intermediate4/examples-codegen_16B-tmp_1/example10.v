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

D_flip_flop reg_bank[0:0] (clk, (reset & ((present_state == 0) & (~in))), ((present_state == 0) & in), out, present_state);
always@(posedge clk, negedge reset)
begin
	if(reset==0) present_state <= 0;
	else begin
	case(present_state)
	 0: if (in==1'b1) next_state <= 0; else next_state <= 1;
	 1: if (in==1'b1) next_state <= 1; else next_state <= 0;
	endcase
	end
	present_state <= next_state;
end
endmodule
