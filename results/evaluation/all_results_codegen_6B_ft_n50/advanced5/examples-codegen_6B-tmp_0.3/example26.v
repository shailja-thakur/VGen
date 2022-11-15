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
// if a or b is high, state changes to SB or SAB.
always @(*) begin
cur_state = next_state;
case(cur_state)
IDLE: if (a && b) next_state = SA; else if (a || b) next_state = SB;
SA: if (a && b) next_state = SAB; else if (a || b) next_state = SB;
SB: if (a && b) next_state = SAB; else if (a || b) next_state = SB;
SAB: if (a && b) next_state = SAB; else if (a || b) next_state = SB;
default: next_state = IDLE;
endcase
end
// State machine logic:
always @(*) begin
if (reset) cur_state = IDLE;
else begin
case(end
endmodule
