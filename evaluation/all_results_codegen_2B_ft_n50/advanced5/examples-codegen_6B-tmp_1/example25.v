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
// If only a or b is high, output is deasserted.
always @(a or b or cur_state) begin
	if (a == 1 && b == 1) next_state = SAB ; 
	else if (a == 1 || b == 1) next_state = IDLE; 
	else next_state =cur_state ; 
end
// State machine 
always @(posedge clk) begin
	if (reset) 
	cur_state = IDLE; 
	else 
	cur_state =next_state ; 
end
endmodule
