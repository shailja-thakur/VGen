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
// if only a or b is high, state changes to S1 or S0.
always @(posedge clk or posedge reset)
	if (reset) 
	cur_state <= IDLE; 
	else 
	cur_state <= next_state;
// State machine to control FSM
always @(cur_state or a or b)
begin
	case(cur_state)
	IDLE: 
	if (a & b) next_state = SAB; 
	else if (a) next_state = S1; 
	else if (b) next_state = S0;
	else next_state = IDLE;
	SAB: 
	if (a & b) next_state = SAB; 
	else if (a) next_state = S1; 
	else if (b) next_stateend
endmodule
