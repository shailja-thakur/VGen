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
// Otherwise, state remains the same.
always @(*) begin
cur_state = next_state;
end
always @(posedge clk or posedge reset) begin
if(next_state == IDLE) begin 
next_state = (a&b) ? SA : ((~a)&(~b)) ? SB : IDLE;
end
end
always @(cur_state or a or b) begin
case(cur_state)
IDLE: begin
if ((a==1) && (b==1))
next_state = SA;
else
next_state = IDLE;
end
SA: begin
if ((a==1) && (b==1))
next_state = SAB;
else
next_state = SA;
end
SB: begin
if ((a==1) && (b==1))
next_state = SABend
end
endmodule
