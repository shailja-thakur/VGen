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
// If only a or b is high, state changes to SB or IDLE (if both are IDLE).
always @(posedge clk or negedge reset) begin
if(~reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// State machine:
always @(*) begin
case(cur_state)
IDLE: begin // Set z to 0.
next_state = a ? SAB : IDLE;
z=0;
end;
SA: begin //Set z to 0.
next_state = b ? SAB : IDLE;
z=0;
end;
SB: begin //Set z to 0.
next_state = a ? SB : SAB;
z=0;
end;
SAB: begin //Set z to 1.
next_state = a ? SAB : (b ?endmodule
