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
// If only a is asserted, then state changes to SA.
// If only b is asserted, then state changes to SB.
always @(posedge clk or cur_state or a or b) begin
if (cur_state == IDLE && a == 1 && b == 1)
next_state = SAB;
else if (cur_state == IDLE && a == 1 && b == 0)
next_state = SA;
else if (cur_state == IDLE && a == 0 && b == 1)
next_state = SB;
else
next_state = IDLE;
end
// State machine to control z. If asserted, then z is 1.
always @(cur_state or a or b) begin
if (cur_state == SAB)
z = 1;
else if (cur_state == SA || cur_state == SB)
z = 0;end
endmodule
