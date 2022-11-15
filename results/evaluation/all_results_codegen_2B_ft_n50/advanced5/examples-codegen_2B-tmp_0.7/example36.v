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
// if input a is high and input b is low, state changes to SA.
// if input a is low and input b is high, state changes to SB.
always@(posedge clk)
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
// next_state logic:
always@(*)
begin
case(cur_state)
IDLE:
if(a)
begin
next_state <= SA;
z <= 1;
end
else if(b)
begin
next_state <= SB;
z <= 1;
end
else
begin
next_state <= IDLE;
z <= 0;
end
SA:
begin
next_state <= SAB;
z <= 1;
end
SB:
begin
next_state <= SAB;
z <= 0;
end
SAB:
end
endmodule
