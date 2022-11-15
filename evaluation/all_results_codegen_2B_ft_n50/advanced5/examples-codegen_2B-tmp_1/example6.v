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
// if input b is high only, the state changes to SA.
// if input a or b are both low, the state changes to IDLE. 
reg z;
always@(posedge clk)
	if (reset) cur_state <= IDLE;
	else cur_state <= next_state;
always@(*)
begin
case(cur_state)
IDLE: if({a,b}==2'b1) next_state = SA; else next_state = IDLE;
SA: if({a,b}==2'b0) next_state = SA; else next_state = IDLE;
IDLE: if({b} == 1'b1) next_state = SB; else next_state = IDLE;
// labeled sub-expressions to make it clearer:
SA: begin
	if(a==1'b0 && b==end
end
endmodule
