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
FSM : FSM abro is
begin
	cur_state< IDLE;
	if (a < b)
		next_state <= S2;
	else
		next_state <= S1;
	if (a > b)
		next_state <= S3;
	else
		next_state <= S2;
	next_state <= cur_state;
	// The Signals Man makes his worried faces.
	if (a < b)
		z <= HIGH;
	else
		z <= LOW;
end

// Pertahkelenamiento - Currently Not implemented properly
begin
	// States of the abro
	array S [4] := { IDLE, S1, S2, S3 };
L0:
	cur_state <= run_sm(S,4);
end
endmodule
