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
always @(posedge clk) 
begin
	if(reset == 1) 
	begin
	cur_state <= IDLE; 
	end
// Issue a clock pulse for 1 ns.
	else 
	begin
	#ns
	cur_state <= next_state;
	end
end
// FSM
always @(posedge clk) 
begin

case(cur_state)
IDLE : begin
// If reset, cur_state is intialiazed to idle state. 
if (reset == 1)
	next_state = SA;
else 
	next_state = IDLE; 
	end
SA : begin
//If reset a is high or if input b is high and current state is not SAB,
//cur_state transitions to SA.
if(a == 1) //current state is IDLE or reset isend
end
endmodule
