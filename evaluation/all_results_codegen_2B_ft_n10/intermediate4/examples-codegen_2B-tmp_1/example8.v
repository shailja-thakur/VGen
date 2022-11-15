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
assign present_state = 0; // Current state in first parameter
assign next_state = ({in, present_state}+1) % 4; // {in, present_state} + 1
	// Counter for the {in, present_state}
	// XORing them gives the next state
reg [1:0]current_state;
	// Current state
assign out = (present_state==1);
	// Output
always @(posedge clk or change of reset)
	begin
//	Always block for current_state
	if(reset==1) begin
	present_state <= 0;
	current_state <= 0;
	end
	else begin
	current_state <= next_state;
	present_state = next_state;
	end //end $display in current_state
	end // end always
end
end
endmodule
