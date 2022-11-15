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
// if a or b is high next state is SAB.
// If both a and b are low, next state is IDLE.
always @(posedge clk or posedge reset) begin
 if (reset)
cur_state <= #1 IDLE;
else
cur_state <= #1 next_state;
// State machine to control z. If both a and b are given, z is asserted. If one of them is given, z is deasserted.
always @(cur_state or a or b) begin
 case(cur_state)
 IDLE: if (a & b)
 next_state = SAB;
 else if (a | b)
 next_state = SB;
 else 
 next_state = IDLE;
 SA: if (a & b)
 next_state = SABend
end
endmodule
