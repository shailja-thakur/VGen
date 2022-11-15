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
// if at least one of them is high, state change to SB.
always @(*) begin
cur_state = next_state; // Update state
end
always @(*) begin
case(cur_state)
IDLE: next_state = a ? SA : IDLE;
SA: next_state = b ? SAB : (a ? SB : IDLE);
SB: next_state = b ? SAB : IDLE;
SAB: next_state = b ? SAB : a ? SB : IDLE;
endcase
end
// output logic:
assign z = cur_state == SAB;
endmodule
