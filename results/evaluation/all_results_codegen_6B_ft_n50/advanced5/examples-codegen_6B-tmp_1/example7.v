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
// when a or b is asserted, state changes to SA or SB.
always @(posedge clk)
begin
if(cur_state == SAB)
z<=1;
else if(cur_state == SA || cur_state == SB) begin
z<=0;
if((a==1)&&(b==1))
next_state <= SAB;
else if (a==1)
next_state <= SA;
else if (b==1)
next_state <= SB;
else
next_state <= IDLE;
end
// State machine to transfer from one state to another.
always @(cur_state or a or b)
begin
case(cur_state)
IDLE: if (a & b) next_state = SA;
	else if(a) next_state = SA;
	else if (b) next_stateend
end
endmodule
