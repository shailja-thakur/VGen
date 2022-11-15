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
// If only a or b is high, the state is asserted to remain steady.
always @ (posedge clk) begin
	cur_state <= next_state;
	//if (a == 1'b1 && b == 1'b1)
	//	next_state <= SAB;
end
// Output logic:
always @ (posedge clk) begin
	//default: z <= 0;
	case(cur_state)
	IDLE : begin
	end
	SA : begin
	end
	SB : begin
	end
	SAB: begin
	end
	endcase
	/*if (cur_state == SAB)
	z = 1;
	else
	z = 0;*/
endmodule
