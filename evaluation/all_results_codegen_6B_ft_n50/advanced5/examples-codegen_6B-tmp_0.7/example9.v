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
// Otherwise, if only a or b is asserted, the state change to SA or SB.
always @(*) begin
cur_state = next_state;
case(cur_state)
IDLE: if (a & b) next_state = SA; else if (a | b) next_state = SB;
SA: if (a & b) next_state = SAB; else if (a | b) next_state = SB;
SB: if (a & b) next_state = SAB; else if (a | b) next_state = SA;
SAB: if (a & b) next_state = SAB; else if (a | b) next_state = SB;
default: next_state = IDLE;
endcase
end
// State output logic:
// if cur_state is SAB, then z is asserted.
// Otherwise, z isendmodule
