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
// else if any input is high, state change to SB.
// else if any input is dark, state change to IDLE.

// State Machine Combinational Logic:
always @(*) begin: state_combinational
	if ((a == 1 && b == 1) || (cur_state == SAB))	cur_state = SAB; 
	else cur_state = SB;
end
// State Machine Z-Compositional Logic:
always @(*) begin: z_compositional
	case(cur_state)
	SA: z = a & b & ~(cur_state); 
	SB: z = a & ~b & cur_state;
	SAB: z = a & b & cur_state;
	default: z = 0;
	endcase
end
// State machi execution.
always @(*) begin: state_changesendmodule
