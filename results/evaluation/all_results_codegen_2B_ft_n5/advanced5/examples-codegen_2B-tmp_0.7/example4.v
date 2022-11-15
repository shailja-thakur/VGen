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
// else if only b is high, then the next state is SA.
// else if only a is high, then the next state is SB.
always@(posedge clk)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always@(*)
begin
case(cur_state)
IDLE:
begin
if(a)
next_state = SA;
else
if(b)
next_state = SB;
else
next_state = IDLE;
end
SA:
begin
if(b)
next_state = SAB;
else
next_state = SA;
end
SB:
begin
if(a)
next_state = SAB;
else
next_state = SB;
end
SAB:
begin
next_state = IDLE;
endend
endmodule
