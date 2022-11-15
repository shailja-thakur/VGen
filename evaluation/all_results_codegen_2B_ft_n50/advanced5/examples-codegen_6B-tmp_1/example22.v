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
// if input a and b both are low, the state change to SB.
// If in state SAB and a or b is asserted, then output z is asserted.
// If in State SB and one of a or b is asserted, then z is asserted.
always @(*) begin
cur_state=cur_state;
case(cur_state)
IDLE: begin
next_state=a?SA:IDLE;
z=0;
end;
SA: begin
next_state=b?SA:IDLE;
z=0;
end;
SB: begin
next_state=a?SB:IDLE;
z=0;
end;
AB: begin
next_state=a?AB:IDLE;
z=1;
end;
endcase
end 

// State Update Sequential Logic

always @(posedge clk) beginendmodule
