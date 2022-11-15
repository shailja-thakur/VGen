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
// z is assigned 0 when cur_state is not IDLE
reg a_received,b_received,z;
always @(posedge clk)
begin

if(reset)
cur_state <= IDLE;	
else
cur_state <= next_state;

z <= 0;

end
always @(a or b) 
begin

a_received <= 0;
b_received <= 0;
next_state <= IDLE;

case (cur_state)
IDLE:
begin
if (a && b)
next_state <= SAB;
else if (a)	
next_state <= SA;
else if (b)
next_state <= SB;
end
SA:
begin
if (b)
next_state <= SAB;
else 
next_state <= SA;
if (b & a)
aend
end
endmodule