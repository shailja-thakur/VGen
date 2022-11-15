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
// If input a is high, state changes to SA and output z is asserted.
// If input b is high, state changes to SB and output z is 
// asserted.
always @(posedge clk)
begin
	if (reset == 1'b1)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
end
always @(*)
begin
	case(cur_state)
	IDLE:
	begin
	if (a == 1'b1 && b == 1'b0)
	begin
	next_state <= SA;
	z <= 1;
	end
	else if (a == 1'b0 && b == 1'b0)
	begin
	next_state <= IDLE;
	z <= 0;
	end
	else
	begin
	next_state <= IDLE;end
end
end
endmodule
