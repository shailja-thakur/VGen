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
// if input a is high and b is low, state changes to SA.
// if input b is high and a is low, state changes to SB.
always @ (posedge clk or posedge reset) begin
	if (reset) begin 
	cur_state <= IDLE;
	end else cur_state <= next_state;
end
// State machine proper begin
always @ (cur_state or a or b) begin
	case (cur_state)
	IDLE: begin
	if (a && b) next_state = SA;
	else if (a && ~b) next_state = SB;
	else if (~a && b) next_state = SAB;
	else next_state = IDLE;
	z = 0;
	end
	SA: begin
	if (a && b) next_state = SAB;
	else ifend
end
endmodule
