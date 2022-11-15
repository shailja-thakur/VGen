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
function abro( ) begin
	case(cur_state)
		0: if ( ((a==1) and (b==1)) or ((a==1) and (b==0))) begin 
			 cur_state <= S1; 
			z <= 1;
			next_state <=  IDLE; 
			// next_state <= S2;  
		end
		1: begin
			cur_state <= S2; 
			z <= 0;
			next_state <= S3;
			//next_state <= S1;
		end
		2: begin
			cur_state <= S3; 
			z <= 1;
			next_state <= S3; 
		end
		3: begin
			cur_state <= S3; 
			z <= 0;
			next_state <= S3; 
		end
	endendmodule
