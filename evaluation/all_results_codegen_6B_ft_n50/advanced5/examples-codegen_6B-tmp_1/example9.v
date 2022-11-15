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
// else if (a==1'b0 && b==1'b0), then state SAB is selected.
// else, state SAA is selected.
always @(cur_state or a or b) begin
cur_state = next_state;
if (cur_state == SAB && a && b) 
next_state = SAB;
else if (cur_state == SAB && (a==b)) 
next_state = SAB;
else if (a==b) 
next_state = SAA;
else 
next_state = IDLE;
end
// Output logic
always @(cur_state or a or b) begin
 case(cur_state)
 IDLE: z=1'b0;
 SAA:z = a;
 SA:z=a;
 SB:z=b;
 SAB:z = 1'end
endmodule
