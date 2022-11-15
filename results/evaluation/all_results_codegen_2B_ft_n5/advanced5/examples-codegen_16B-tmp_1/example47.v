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
// In the case that someone changes state then z is tagged high
always @(a,b,cur_state)
begin
case(cur_state)
IDLE:
begin
if((a==1)&&(b==0))
begin
next_state = IDLE;
z = 0;
end
else if ((a==0)&&(b==0))
begin
next_state = IDLE;
z = 0;
end
else
begin
next_state = SAB;
z = 0;
end
end
SA:
begin
if(b==1)
begin
next_state = SA;
z = 0;
end
else
begin
next_state = SAB;
z = 0;
end
end
SB:
begin
if(a==1)
begin
next_state = SB;
z = 0;
end
end
end
endmodule
