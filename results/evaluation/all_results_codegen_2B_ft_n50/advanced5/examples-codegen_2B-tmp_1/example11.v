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
// if input a is high, state changes to SA. 
// if input b is high, state changes to SB. 
// Active logic:
// output is asserted for one clock cycle. 
// at time 0, z is high for one clock cycle.
always @(posedge clk)
if(reset | cur_state==IDLE)
	cur_state <= next_state;
else
	cur_state <= IDLE;
always @(cur_state,a,b)
if(cur_state==IDLE)
	if(a&b) next_state <= SA;
else if(a) next_state <= SB;
else if(b) next_state <= SAB;
endmodule
