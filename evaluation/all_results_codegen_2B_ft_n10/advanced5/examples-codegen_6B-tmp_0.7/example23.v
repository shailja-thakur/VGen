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
// If any input is changed, state changes to SAB again.
// if input a or b is changed, but not both, the state changes to SB. 
always @(posedge clk or posedge reset)
begin
if (reset)
cur_state <= IDLE;
else 
cur_state <= next_state;
end
// State machine function:
// output z is asserted when current state is SAB
// This always block is a sequential state machine.
always @(*)
begin
case(cur_state)
IDLE: if (a & b) next_state = SA; else next_state = IDLE;
SA: if (a & b) next_state = SAB; else next_state = IDLE;
SB: if (a & b) next_state = SAB; else next_state = SB;
SAB: if (a & bend
endmodule
