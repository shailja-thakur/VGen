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
// Otherwise, if output z is not asserted, then the state 
// changes to IDLE.
always @(posedge clk or posedge reset) begin
 if(reset)
 cur_state <= IDLE;
 else
 cur_state <= next_state;
end
// State machine logic:
always @(*) begin
case(cur_state)
 IDLE: if(a && b) next_state = SA;
 else if(a || b) next_state = IDLE;
 SA: if(a && b) next_state = SB;
 else if(a || b) next_state = SA;
 SB: if(a && b) next_state = SAB;
 else if(a || b) next_state = SB;
 SAB: if(a && b) next_state = SAB;
 else if(a || b) next_state = IDend
endmodule
