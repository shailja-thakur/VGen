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
//Note that once one of the signals is low, it will remain low.
property outputs = {
	z <= S1 | a <- S2 | b <- S1;
	z <= S1 | a <- S2 | b <- S3;
	z <= S1 | a <- S2 | b <- S1;
	z <= S1 | a <- S2 | b <- S3;
	z <= S2 | a <- S3 | b <- S1;
	z <= S2 | a <- S3 | b <- S1;
	z <= S2 | a <- S3 | b <- S2;
	z <= S2 | a <- S3 | b <- S3;
};

//All the transitions of this FSM are enabled at the same time.
behavior bzro =
{
	//ignore_step transactition <- a <- 1 | b <- 0endmodule
