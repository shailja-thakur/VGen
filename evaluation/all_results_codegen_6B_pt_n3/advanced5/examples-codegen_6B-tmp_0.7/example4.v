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
always @(posedge clk) begin
	case(cur_state)
		//If S1 is active then
		//1. S1->S2
		if(a) begin
			next_state <= S2;
		end
		//2. S1->S3
		if(b) begin
			next_state <= S3;
		end
		//If S2 is active then
		//3. S2->S1
		if(a) begin
			next_state <= S1;
		end
		//4. S2->S2
		if(b) begin
			next_state <= S2;
		end
		//If S3 is active then
		//5. S3->S1
		if(a) begin
			next_state <= S1;
		end
		//6. S3->S2
end
endmodule
