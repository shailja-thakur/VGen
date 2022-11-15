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
// if a is high and not input b, change to SA. 
// if b is high and not input a, change to SB. 
always @(posedge clk)
begin
if (reset == 1)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @(a or b)
begin
case (cur_state)
IDLE:
begin
if (a)
next_state <= SA;
if (b)
next_state <= IDLE;
end
SA:
begin
if (b)
next_state <= IDLE;
else
next_state <= SAB;
end
SB:
begin
if (a)
next_state <= SAB;
else
next_state <= IDLE;
end
SAB:
begin
if (a)
next_state <= IDLE;
end
end
endmodule
