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
// Otherwise, if any of those inputs are high, output is held low.
always @(posedge clk ) begin
cur_state <= next_state;
end 
	 // Evaluates the next state by comparing the present state with an 
	 // input vector. The state is then incremented.
// Compares the present state with the next state to determine
// which the output signals to drive.
always @(cur_state or a or b) begin
//initials
next_state = IDLE; 
case(cur_state)
IDLE: begin 
if (a) next_state = SA;
else if (b) next_state = SB;
else next_state = IDLE;
end	
SA:begin next_state = #2 SAB;
end
SB:begin next_state = #2 SAB;
end
AB:begin next_stateend
end
endmodule
