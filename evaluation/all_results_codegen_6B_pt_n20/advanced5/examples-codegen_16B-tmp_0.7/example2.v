// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
//If a or b are high, the output state transitions from S1 to S2 or S3,
//If either of them are low, the output state transitions to IDLE
always @(posedge clk)
begin
	cur_state <= next_state;
	next_state <= ( (a == HIGH) ? S1 : IDLE );
	next_state <= ( (b == HIGH) ? S2 : IDLE );
end
endmodule
