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
always @(posedge clk or posedge reset) begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// FSM next state logic:
// Assert SAB when inputs are both high.
always @(*) begin
case(cur_state)
IDLE:
if(a && b)
next_state <= SA;
else
next_state <= IDLE;
// SAB is asserted for one clock cycle.
SA: 
if(a && b)
next_state <= SAB;
else
next_state <= IDLE;
// SAB is asserted for one clock cycle.
SB:
if(a && b)
next_state <= SAB;
else
next_state <= IDLE;
endcase
end
// Output z
assign z = (cur_state == SABendmodule
