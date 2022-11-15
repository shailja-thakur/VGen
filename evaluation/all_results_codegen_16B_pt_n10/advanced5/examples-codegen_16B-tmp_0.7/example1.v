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
reg [1:0] z;
always begin
if (a && b) begin z = 1;
end else
if (b && !a) begin z = 1;
end else
if (!a && !b) begin z = 1;
end else
if (cur_state == IDLE && a && b) begin next_state = SAB;
else if (cur_state == IDLE && a) begin next_state = SA;
else if (cur_state == IDLE && b) begin next_state = SB;
else if (cur_state == SA && b) begin next_state = SAB;
else if (cur_state == SB && a) begin next_state = SAB;
else begin next_state = IDLE;
if (cur_state != next_state) begin
cur_state = next_state;
end else begin
z = 0;end
end
end
end
end
end
end
end
endmodule
