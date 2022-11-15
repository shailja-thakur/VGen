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
// else if (~a AND b) then changes to SA.
// else if(a) then changes to SB.
// If a or b are asserted during SAB or SA, state is changed to to IDLE.
always @(posedge clk) begin
	if (reset) 
	cur_state <= IDLE; 
	else
	cur_state <= next_state;
end
// State changes only when they are inputs to this module,
// change state when module requests.
// Each bit of a and b is a part of the input logic that
// controls the next state (a and next_state). 
always @ (a or b) begin
	next_state = IDLE;
	if (a == 1 && b == 1) 
	next_state = SAB;
	else if (a == 1 || b == 1)
	next_state = SAend
endmodule
