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
// New input and curr_state feed each other on clock edge
// ------------------------------------------------------------------------

//ounce out if transitioning to new state
assign out = (present_state == next_state);

always @ (posedge clk or posedge reset) begin
	if (reset) 
	begin
	end 
	else begin
	//apply your design here
	 present_state <= next_state;
	end
end

always @ (posedge clk) begin
	if (present_state == `S0 & in == 1) 
	begin
	next_state = `S1;
	//set next state
	end 
	else if (present_state == `S1 & in == 1)
	begin
	next_state = `S0;
	//set next state
	end 
//set next state
always @ (posedge clend
endmodule
