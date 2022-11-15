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
// If the a or b input is asserted high then the state 
// changes to SB or SAB based on the output of the state
// current_state and next_state.
always @(posedge clk) 
begin
if(reset)
cur_state<=IDLE;
else
cur_state<=next_state;
end
// State machine transition logic:
always @(*) 
begin
case(cur_state)
IDLE: if(a&b) 
begin
next_state=SA;
z=1'b0;
end else begin
next_state=IDLE;
z=1'b0;
end
SA: if(a) 
begin
next_state=SB;
z=1'b0;
end else begin
next_state=SA;
z=1'b0;
end
SB:end
endmodule
