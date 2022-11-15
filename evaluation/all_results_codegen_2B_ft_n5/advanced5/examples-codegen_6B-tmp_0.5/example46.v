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
// if only a or b is high, the state change to SA or SB.
always @(cur_state or a or b) begin
	if (a & b) 
	cur_state = SAB;
	else if (a | b) 
	cur_state = SA;
	else
	cur_state = IDLE;
end
// State machine to generate z.
always @(cur_state or a or b) begin
	case(cur_state)
	IDLE: if (a & b)
	next_state = SAB;
	else if (a | b)
	next_state = SA;
	else
	next_state = IDLE;
	SAB: if (a & b)
	next_state = SAB;
	else
	next_state = IDLE;
	default: next_state = IDLEend
endmodule
