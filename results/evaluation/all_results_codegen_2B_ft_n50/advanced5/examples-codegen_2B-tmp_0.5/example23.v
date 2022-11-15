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
// if only a is high, state changes to SA. 
// if only b is high, state changes to SB.
// If none of a, b, or reset is high, state is IDLE.
always @(posedge clk)
	if(reset) cur_state <= IDLE;
	else cur_state <= next_state;
always @(*)
	case(cur_state)
	IDLE: if(a) next_state <= SA; else next_state <= IDLE;
	SA: if(b) next_state <= SB; else next_state <= SA;
	SB: if(b) next_state <= SAB; else next_state <= IDLE;
	SAB: if(a) next_state <= IDLE; else next_state <= SAB;
	default: next_state <= IDLE;
	endcase
assignendmodule
