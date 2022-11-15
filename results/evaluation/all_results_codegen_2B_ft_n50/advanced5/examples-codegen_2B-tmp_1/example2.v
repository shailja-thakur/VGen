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
// If either one of input a or b is high, then current state 
// remains the same and output z is 1. If reset function triggers, 
// current state is AL1.
// cur_state assignments:
always @(posedge clk or negedge reset) begin
if (~reset)
cur_state<=IDLE;
else
cur_state<=next_state;
end
always @(cur_state or a or b) 
case(cur_state)
IDLE: begin
next_state = SA;
if(a&b)
z=1;
else 
z=0;
end
SA: begin
next_state = SB;
end
SB:begin
next_state = SAB;
end
SAB:begin
next_state = IDLE;
end
endcase
endmodule
