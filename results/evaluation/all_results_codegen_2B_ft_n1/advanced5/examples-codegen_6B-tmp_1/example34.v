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
// Otherwise, if output z is asserted, state changes to IDLE.
always @(*) begin 
cur_state <= next_state;
end
always @(a or b) begin
if(a==1'b1 && b==1'b1)
next_state = SAB;
else if (cur_state==SAB)
next_state = IDLE;
else 
next_state = SAB;
end
assign z = (cur_state==SAB)?1'b1:1'b0;
endmodule
