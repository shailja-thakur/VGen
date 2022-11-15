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
assign z = (cur_state==SAB);
assign a_ = (cur_state==IDLE && a == 1);
assign b_ = (cur_state==IDLE && b == 1);
always @(posedge clk)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @*
begin
case (cur_state)
IDLE : begin
z_ <= 0;
if (a_)
next_state = a;
else if (b_)
next_state = b;
else
next_state = cur_state;
end
SA : begin
z_ = 0;
if (a_)
next_state = a;
else
next_state = SB;
end
SB : begin
z_ = 0;
if (b_)
end
end
endmodule
