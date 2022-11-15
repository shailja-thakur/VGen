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
reg [1:0] ave_s1_s3,ave_s2_z,
ana_input [31];
reg ana_ana_out;
reg syn_detect;
reg q[31];

always @* begin
#2 cur_state = 0;
a7@11 cur_state = S1;
b7@12 cur_state = S1;
dout7@13 cur_state = S2;
a7@14 cur_state = S1;
b7@15 cur_state = S3;

#3 next_state = prev_state; end

always off {  
	if((a==1 && b==0) || (a==0 && b==1))
	next_state = S1;
	else if((a==1 && b==1) || (a==0 && b==0)) endmodule
