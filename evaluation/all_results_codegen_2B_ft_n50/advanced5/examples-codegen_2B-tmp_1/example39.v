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
// If only input a is high, state drops to IDLE.
// If only input b is high, the state changes to SA and z is 1.
always @ (reset or cur_state or next_state or a or b) begin
case (cur_state) 
// IDLE state must be initial state.
IDLE: begin
if (a ==0 & b == 0)
next_state = IDLE;
else if (~a & ~b & z == 1)
next_state = IDLE;
else next_state = SA;
end
// SA state, only a high input is significant.
SA: begin
if (~a & ~b & z == 1)
next_state = SA;
else if (a == 0 & b == 0)
next_state = SAB;
else next_state = IDLE;
end
// SAB state, only b highend
endmodule
