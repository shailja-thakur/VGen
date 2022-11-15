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
assign z=(cur_state==SAB || (cur_state==SB && a && b));
// But if it is busy, nothing is sent
always @(posedge clk or reset)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @(cur_state)
begin
case(cur_state)
IDLE: if (a==1 && b==1) next_state=SA; // If (a,b) is in, send SA
IDLE: if (a==1 && b==0) next_state=SB; // If (a,b) is out, send SB
SA: if(b) next_state=SAB; else next_state=IDLE; // bps always high, unless it is busy.
SB: if(a) next_state=SAB;end
endmodule
