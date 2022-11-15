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
parameter idle = 0, in_1=1, in_0=2, out_1=3, out_0=4;
always@(posedge clk or posedge reset) // present state
begin
 if(reset) /// In reset state, go to IDLE
 begin
	present_state <= idle;
 end
	else
	begin
	 present_state <= next_state;
	end
end
always@(present_state or in) // next state
begin
 case(present_state) /// Idle: when in idle
 begin
 next_state <= in ? in_1 : idle;
 end
 in_1: begin
 next_state <= in ? in_1 : in_0;
 end
 in_0: begin
 next_state <= in? in_1 : in_0;
 end
 out_1: begin
 next_state <= in ? outend
end
endmodule
