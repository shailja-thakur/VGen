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
// If only a is high, the state changes to SA, if only b is high, to IDLE.
always@(posedge clk, posedge reset)
begin
	if(reset)
	cur_state <= #1 IDLE;
	else
	begin
	case(cur_state)
	IDLE:
	if(a)
	cur_state <= #1 SA;
	else if(b)
	cur_state <= #1 IDLE;
	else
	cur_state <= IDLE;
	SA:
	if(a)//State stays SA if only a is high
	cur_state <= #1 SA;
	else
	cur_state <= #1 IDLE;
	endcase
	end
always@(posedge clk)
begin
case(cur_state)
IDLE: next_state <= #1 IDLEend
endmodule
