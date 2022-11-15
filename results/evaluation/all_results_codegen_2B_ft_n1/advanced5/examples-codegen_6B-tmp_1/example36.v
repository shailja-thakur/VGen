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
// if only a is asserted, then state changes to SA.
// if b is asserted while SA is asserted, then state changes to SB.
// if both a and b are asserted while SA and SB are asserted, then
// state changes to SAB.
always @(*) begin
	cur_state <= next_state;
end 
always @(cur_state or a or b) begin 
	if (a==1'b1 && b==1'b1)
	next_state = SAB;
	else if (a==1'b1 && b==1'b0)
	next_state = SA;
	else if (a==1'b0 && b==1'b1)
	next_state = SB;
	else
	next_state = IDLE;
end
// State machine to control z output. 
always @(cur_stateendmodule
