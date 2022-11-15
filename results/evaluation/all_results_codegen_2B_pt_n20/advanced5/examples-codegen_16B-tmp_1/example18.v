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
//Assume a' and b' both are high when sign'=1 and low when sign'=0.
//The output shifts between two random states only when the state moves to a state where a' and b' are at a different threshold
with clk,a,b,cur_state,next_state;
begin
	if(a = 1 and b' = 0 and sign' = 1) next_state = S1;
	else if (a' = 1 and b = 0 and sign' = 0) next_state = S3;
	else if (a' = 1 and b' = 0 and sign' = 1) next_state = S2;
	else next_state = IDLE;
end
end abro;
endmodule
