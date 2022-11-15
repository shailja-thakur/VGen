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
assign z = (cur_state == SAB);
always @(posedge clk or negedge reset)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @(a or b or cur_state)
begin
case(cur_state)
IDLE: begin
next_state = IDLE;
if(a == 1'b1 && b == 1'b1)
next_state = SA;
if(a == 1'b1 && b == 1'b0)
next_state = SB;
if(a == 1'b0 && b == 1'b1)
next_state = SB;
if(a == 1'b0 && b == 1'b0)
next_state = IDLE;
end
SA: begin
next_state = SAB;
end
end
endmodule
