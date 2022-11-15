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
//The input signals are passed in the same order as they are passed to the FSM.
always@(posedge clk) begin
	cur_state = IDLE;
	next_state = IDLE;
	if (a == 1) next_state = S1;
	if (b == 1) next_state = S2;
	if (a == 1 && b == 1) next_state = S3;
	if (next_state != IDLE) begin
		next_state = IDLE;
		z = 1;
		next_state = IDLE;
	end
end

//This is a simple FSM.
//The input signals are passed in the same order as they are passed to the FSM.
//The output signals are passed in the same order as they are passed to the FSM.
always@(posedge clk) begin
	curend
endmodule
