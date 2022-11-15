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
 // If state changes to SAB, output z is asserted.
// else if input a and b both are low, state change to SB.
// If a and b go low and the new state is SB, then z is asserted.

always @(posedge clk or negedge reset) begin
	if (reset == 1'b0)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
end 

always @(next_state or a or b) begin
 	case (next_state)
	IDLE: if (a == 1'b1 && b == 1'b1) next_state = SA; 
	else if (a == 1'b1 && b == 1'b0) next_state = HA;
 
	SA: if (a == 1'b1 && b == 1'b1)end
endmodule
