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
// if input a is high and input b is low, state changes to SA.
// if input a is low and input b is high, state changes to SB.
always @(posedge clk)
if (reset) cur_state <= IDLE;
else cur_state <= next_state;
always @(*)
begin
case(cur_state)
IDLE: next_state <= a ? SA : IDLE;
SA: next_state <= b ? SB : SA;
SB: next_state <= b ? SA : SAB;
SAB: next_state <= a ? IDLE : SB;
endcase
end
assign z = (cur_state == SAB);
endmodule
