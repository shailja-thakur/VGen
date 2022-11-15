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
// if input a and b are both low, state changes to IDLE.
// if input a and b are both high, state changes to SA.
always @(posedge clk or posedge reset)
begin
if (reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// next state combinational logic:
always @(*)
begin
case (cur_state)
IDLE:
begin
if (a)
next_state = SA;
else if (b)
next_state = SB;
else
next_state = IDLE;
end
SA:
begin
if (a)
next_state = SA;
else if (b)
next_state = SAB;
else
next_state = IDLE;
end
SB:
begin
if (a)
next_state = IDLE;
end
end
endmodule
