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
// If one of them is high, state changes to SB or SA.
always @(*) begin
cur_state = next_state;
case(cur_state)
// If the previous state is SAB, then z is asserted high.
IDLE: begin
if(a & b)
next_state = SAB;
else if(a)
next_state = SB;
else if(b)
next_state = SA;
else
next_state = IDLE;
end
// If the previous state is SB or SA, then z is asserted high.
SB: begin
if(a & b)
next_state = SAB;
else if(a)
next_state = SA;
else if(b)
next_state = SB;
else
next_state = IDLE;
end
SA: begin
if(a & b)
next_stateend
end
endmodule
