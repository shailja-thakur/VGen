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
// if a is high and b is low, then the state changes to SA.
// if b is high and a is low, then the state changes to SB.
always @(posedge clk or posedge reset) begin
	if (reset) 
	cur_state <= IDLE;
	else
	cur_state <= next_state;
end
// State transition logic:
always @(*) begin
	case(cur_state)
	IDLE: if (a & b)
	next_state = SA;
	else if (a)
	next_state = SA;
	else if (b)
	next_state = SB;
	else 
	next_state = IDLE;
	SA: if (a & b)
	next_state = SAB;
	else if (a)
	next_state = SA;
	else ifend
endmodule
