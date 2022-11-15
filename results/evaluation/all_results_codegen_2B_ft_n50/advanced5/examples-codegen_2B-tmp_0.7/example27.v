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
// if input a or b are both low, state changes to IDLE. 
// if input b is high only, state changes to SA.
// if input b is low only, state changes to SB.
always @(posedge clk or posedge reset)
if (reset)
cur_state <= IDLE;
else
cur_state <= next_state;
always @(*)
begin : combinational_logic
case (cur_state)
IDLE : begin
if (a == 1'b1 && b == 1'b1) begin
next_state <= SA;
z <= 1'b0;
end
else if (a == 1'b1 && b == 1'b0) begin
next_state <= IDLE;
z <= 1'b0;
end
else if (a == 1'b0 && b == 1'b0) begin
nextend
end
end
endmodule
