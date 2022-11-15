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
assign z = (cur_state == SA && a && b) || (cur_state == SAB && a && b) || (cur_state == IDLE && a && b);
// State transition logic:
always @(posedge clk, posedge reset)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @(*)
begin
case(cur_state)
IDLE:
begin
// Idle state has no next state.
if(a)
next_state = SA;
else if(b)
next_state = SB;
else
next_state = IDLE;
end
SA:
begin
// SA state has no next state.
if(a)
next_state = SA;
else if(b)
next_state = SB;
else
next_state =end
end
endmodule
