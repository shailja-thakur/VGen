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
// Otherwise, if either a or b is high, state changes to SB. 
// if the current state is SAB and if a or b is asserted,
// next state = SAB.
// If else is asserted, next state is SB.
always @(posedge clk or posedge reset) 
	if(reset)
 	cur_state <= IDLE;
 	else
 	cur_state <= next_state;

assign z = cur_state == SAB;

always @(next_state or a or b) 
	case(cur_state)
	IDLE: if (a && b) next_state=SA;
	else if (a) next_state=SB;
	else if (b) next_state=SA;
	SA: if (a && b) next_state=SA;
	else if (a)endmodule
