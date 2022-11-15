// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
always @ (posedge clk or posedge reset)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @ (cur_state or a or b)
begin
case(cur_state)
IDLE:
begin
if(a == 1 && b == 1)
next_state = SAB;
else
next_state = IDLE;
end
SA:
begin
if(a == 1)
next_state = SA;
else
next_state = IDLE;
end
SB:
begin
if(b == 1)
next_state = SB;
else
next_state = IDLE;
end
SAB:
begin
next_state = IDLE;
end
endcase
end
// This is the output logic.
always @ (cur_state or a or bendmodule
