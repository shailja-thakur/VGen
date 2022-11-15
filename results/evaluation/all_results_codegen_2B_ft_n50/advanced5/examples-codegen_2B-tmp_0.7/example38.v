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
// if only one of them is high, the other state is chosen, and the result becomes SA.
// if neither a nor b is high, the current state remains the same and the result is SAB.
always @(posedge clk or posedge reset) begin
if (reset) cur_state <= IDLE;
else cur_state <= next_state;
end
always @(*) begin
// Set SAB as default
next_state <= IDLE;
case (cur_state)
IDLE: begin
if (a == 1 && b == 1) next_state <= SA;
else if (a == 0 && b == 0) next_state <= SAB;
else next_state <= IDLE;
end
SA: begin
if (a == 0 && b == 0) next_state <= SAB;
else next_state <= IDLE;
end
SB: begin
end
end
endmodule
