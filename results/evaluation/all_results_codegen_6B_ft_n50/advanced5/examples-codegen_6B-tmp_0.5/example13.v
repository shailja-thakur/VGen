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
// If the current state is SAB and the next state is SAB, output z is asserted.
// if input a and b are both low, state changes to SA.
// if the current state is SA and the next state is SA, output z is asserted.
// if input a and b are both low, state changes to IDLE.
// if the current state is IDLE and the next state is IDLE, output z is asserted.
always @(posedge clk or posedge reset) begin
if(reset)
	cur_state <= IDLE;
else 
	cur_state <= next_state;
end
always @(cur_state or a or b) begin
case(cur_state)
	IDLE: begin
	if(a && b)
	next_state = SAB;
	else if(a || b)
	next_state = SA;
end
end
endmodule
