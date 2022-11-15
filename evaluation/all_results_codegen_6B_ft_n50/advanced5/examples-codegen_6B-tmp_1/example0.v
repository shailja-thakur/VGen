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
// Otherwise, if any one of them is high, the state changes to SB or SA.
// if state is SA or SB, the output z is asserted for atmost one clock cycle.
always @(posedge next_state or cur_state or reset or a or b) 
begin 
if(reset) 
cur_state <= IDLE;
else 
cur_state <= next_state;
end 
// State machine:
always @(cur_state or a or b) 
begin 
next_state = cur_state;
case(cur_state) // IDLE is a state with no delay. 
IDLE : if(a && b) next_state = SA; else if(a || b) next_state = SB;
SA : if(a && b) next_state = SAB; else if(a || b) next_state = SB;
end
endmodule
