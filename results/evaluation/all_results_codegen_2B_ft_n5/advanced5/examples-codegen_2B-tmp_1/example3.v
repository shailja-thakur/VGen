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
// if input a is held high, state does not change based on inputs b unless both are high.
// if input b is held high, state is SA.
always @(posedge clk) 
	if (reset)
 	 cur_state <= IDLE;
 	 else	cur_state <= next_state;
always @(cur_state)
 begin
 	case (cur_state)
 	IDLE: if (a)	next_state <= SA; 
 	else	if (b)	next_state <= SB;
 	else	next_state <= IDLE;
 	SA: if (a)	next_state <= SA;
 	else if (b)	next_state <= SAB;
 	else	next_state <= IDLE;
 	SB: if (b)	next_state <= SAB;
end
endmodule
