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
always @(posedge clk) begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @(a or b) begin
case (cur_state)
IDLE: begin
if(a && b) begin
next_state = SAB;
end
else if(a) begin
next_state = SA;
end
else if(b) begin
next_state = SB;
end
else next_state = IDLE;
end
SA: begin
if(b) begin
next_state = SAB;
end
else begin
next_state = SA;
end
end
SB: begin
if(a) begin
next_state = SAB;
end
else begin
next_state = SB;
end
end
SAB: begin
next_state = IDLE;
endend
endmodule
