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
// if a or b is high, then state falls back to either SAB or SA.
always@(*)begin 
cur_state = next_state;
case(cur_state)
IDLE: begin if(a==1 && b==1) next_state = SA; else next_state = IDLE ; end
SA: begin if(a==1 && b==1) next_state = SAB; else next_state = SA ; end
SB: begin if(a==1 && b==1) next_state = SAB; else next_state = SB ; end
SAB: begin if(a==1 && b==1) next_state = SAB; else next_state = IDLE ; end
endcase
end
assign z = cur_state==SAB;
endmodule
