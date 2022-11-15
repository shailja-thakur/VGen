// This is an FSM 
module abro(
input clk,
input reset,
input a,
input b,
output z 
);
parameter IDLE = 0, SA = 1, SB = 2, SAB = 3;
reg [1:0] cur_state,next_state;
// Update state or reset on every clock edge.
// Output z is asserted 1 when the current state is SAB.
// Nest state generation logic:
// if input a and b both are high, state changes to SAB. 
// if input a is high and b is low, state is SA (the abro becomes 1 high). 
// if input a, b, and c are low simultaneously then state becomes SB. 
assign next_state = ((cur_state == SA && a && b) || (cur_state == SB && b && c));
always@(posedge clk)
	begin
	if(reset)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
	assign z = (cur_state == SAB);
	end
endmodule
