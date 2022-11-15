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
// if input b is high only, state changes to SA
// if input a is high only, state changes to SB
// z is asserted when state is SAB
always @(posedge clk,posedge reset)
	if(reset==1)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
/*
always @(posedge clk,posedge reset)
	if(reset==1)
	cur_state <= IDLE;
/*
	if (reset)

*/
always @(1'b0,a,b) //combined statement.
	
always @(cur_state)
	case(cur_state)
	IDLE: begin 
	
	if ((a==0)&(b==0)) q1=0;
	else if (a==b) q1=1;
end
endmodule
