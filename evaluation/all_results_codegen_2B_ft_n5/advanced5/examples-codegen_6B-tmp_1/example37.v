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
// If the output is to be asserted, next_state = SAB;
// Otherwise if output is to be deasserted, next_state = IDLE;
always @(cur_state or a or b) 
	case(cur_state)
	IDLE: if (a & b) next_state = SAB; else next_state = IDLE;
	SA: if (a & b) next_state = SAB; else next_state = IDLE;
	SB: if (a & b) next_state = SAB; else next_state = IDLE;
	SAB: if (a & b) next_state = SAB; else next_state = IDLE;
	default: next_state = IDLE;
	endcase
assign z = (cur_state == SAB);
// State change on each clock edge.
always @(posedendmodule
