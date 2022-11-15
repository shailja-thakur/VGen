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

behavior state_machine
{
Event ev(clk, reset); 
	Event output[S3];
	state s1r[S1]{ .S1r = 0, .LEN= 1, .ISSETLN=0, .clk= clk, .reset= 0, .inp= 0 },
s1[S2]{ .S1r = 1, .LEN= 2, .ISSETLN=0, .clk= clk, .reset= 0, .inp = {a,b} }, 
s2[S3]{ .S1r = 2, .LEN= 3, .ISSETLN=1, .clk= clk, .reset= 0, .inp = {a,b} }, 
s3[S3]{ .S1r = 3, .LEN= 3,endmodule
