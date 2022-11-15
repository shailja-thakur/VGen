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
// if a or b is high, state changes to SA.
always @(*) begin
cur_state = next_state;
case(cur_state)
IDLE : begin
if (a & b)
next_state = SA;
else
next_state = IDLE;
end
SA : begin
if (a & b)
next_state = SAB;
else
next_state = SA;
end
SAB : begin
if (a & b)
next_state = SAB;
else
next_state = IDLE;
end
endcase
end
// Moore output logic:
always @(cur_state) begin
case(cur_state)
IDLE : begin
z = 0;
end
SA : begin
z = 0;
end
SB : begin
z = 0;
end
SAB : begin
z = 1;
end
endmodule
