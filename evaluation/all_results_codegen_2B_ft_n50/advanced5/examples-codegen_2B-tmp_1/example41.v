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
always @(posedge clk used as clk) begin
case (cur_state)
IDLE:
	if (a & b)
	next_state <= SA;
	else
	next_state <= IDLE;
SA:
	if (b)
	next_state <= SB;
	else
	next_state <= SA;
SB:
	if (a)
	next_state <= SAB;
	else
	next_state <= SA;
default:
	next_state <= IDLE;
endcase
end

// Output of current state
always @(cur_state) begin
case (cur_state)
SA: z = 1'b1;
SB: z = 1'b0;
SAB: z = 1'b0;
default: z = 1'b0;
endcase
end

// Complex pathendmodule
