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
// Otherwise, if the input a or b is high, the state 
// changes to SB or SA, from where the output z is asserted.
always @(*) begin 
cur_state <= next_state;
end
// State machine function. The state machine uses the above state 
// encoding. The output q is also made the input to the next state 
// computation.
always @(*) begin 
case(cur_state)
IDLE :begin 
if (a==1 && b==1)	next_state <= SAB; 
else 	next_state <= (a==1)?SA:SB;
z <= 0; 
end;
SA :begin 
if (a==1 && b==1)	next_state <= SAB; 
else 	next_state <= (b==1)?SB:SA;
z <= ((a==1)?end
end
endmodule
