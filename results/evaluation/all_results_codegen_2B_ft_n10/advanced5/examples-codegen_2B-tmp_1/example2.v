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
// if we are in SAB (and sometimes just then leave), state is just snYpped back to SA. 
always @(posedge clk or negedge reset)
if (~reset)
cur_state <= SA;
else
cur_state <= next_state;
// Combinational logic
always @ *
if ((cur_state == SA) && (a == 0))
next_state <= SA;
else if ((cur_state == SA) && (a == 1))
next_state <= SB;
else if ((cur_state == SB) && (b == 0))
next_state <= SAB;
// FSMnext_state logic
// if the first snYpe of SAB
// if we hit end of state 0
always @*
if (a == 1 && b == 0)
case (cur_state)
SA: begin
if (cur_end
endmodule
