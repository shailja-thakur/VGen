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
//The output is high when both inputs are high and low when one is high and the other is low.
//The FSM has no stable state.
begin
	always @(posedge clk or negedge reset) begin
		cur_state <= S1;
	end
	always @(posedge clk or negedge reset) begin
		next_state <= cur_state;
		next_state == S1 ->  a == 1 -> next_state <= S2;
		next_state = S2 -> b == 1 -> next_state <= S3;
		next_state = S3 -> cur_state <= IDLE;
	end
end
endmodule
