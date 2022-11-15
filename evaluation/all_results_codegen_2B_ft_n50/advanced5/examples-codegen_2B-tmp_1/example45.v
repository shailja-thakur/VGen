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
// if input a is high, state changes to SA, if input b is high SAB remains same.
always @ (posedge clk or posedge reset)
begin
	if (reset)
	// reset asserted
	cur_state <= IDLE;
	else
	// always else if
	cur_state <= next_state;
end
always @(*)
begin 
	case (cur_state) 
	idle:begin
	//Nest Basilics components
	next_state=sa;
	end
	sa:begin
	next_state= Note1 & Note2;
	end
	Note1 & Note2:begin
	next_state=sa;
	end
	endcase
end
endmodule
