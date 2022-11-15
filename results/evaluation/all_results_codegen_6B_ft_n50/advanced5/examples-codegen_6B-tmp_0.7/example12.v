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
// if input a or b is high for more than 2 clock edges, state changes to SA or SB.
always @(posedge clk or cur_state or a or b) begin
cur_state <= next_state;
end
// State machine to generate z. If a and b are both high, then output is 1.
// If a or b are high for more than 2 clock edges, then output is 0.
always @(cur_state or a or b) begin
case(cur_state)
IDLE: begin
z <= 0;
if (a == 1 && b == 1) 
next_state = SA;
else if (a == 1 || b == 1)
next_state = SB;
else 
next_state = IDLE;
end
SA: begin
z <= 0;
if (a == 1 && b == 1)
next_state = SABend
end
endmodule
