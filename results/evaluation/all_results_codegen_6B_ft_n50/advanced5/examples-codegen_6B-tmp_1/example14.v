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
// if it's a or b is asserted, then next state = current state.
// if both inputs are de-asserted then nextstate = IDLE. 
// at any given point of time only one output is asserted and the
// other is De-asserted and is independent of inputs a and b. 
always @(posedge clk or posedge reset) begin
	if(reset) 
assign cur_state = IDLE;
else 
	cur_state = next_state;	
end
// State Effective State transformation logic.
// When both a and b are asserted, then Effective state = SAB;
assign next_state = (cur_state == SAB) && (a == 1 & b == 1) ? SAB : ((cur_state == SAB) && (a == 0 & b == 0)) ? IDLE : cur_state;
// State register.endmodule
