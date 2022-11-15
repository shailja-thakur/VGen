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
// if only a or b are high, state changes to SB or IDLE, but if a or b are low and previuos state was SAB, then state is reset to SAB.
always @(posedge clk) begin
	if (reset)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
end
// State machine:
always @(cur_state or a or b) begin
	case (cur_state)
	IDLE: begin
	if (a & b)
	next_state = SA;
	else if (a | b)
	next_state = SB;
	else
	next_state = IDLE;
	z = 0;
	end
	SA: begin
	if (a & b)
	next_state = SAB;
	else
	next_state = IDLEend
end
endmodule
