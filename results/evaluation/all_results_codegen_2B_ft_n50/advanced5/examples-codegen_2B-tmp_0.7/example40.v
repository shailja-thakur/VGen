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
// if only b is high, then state changes to SA.
// if only a is high, then state changes to SB.
always @(posedge clk) begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// Output logic:
always @(cur_state) begin
case(cur_state)
	IDLE :
	begin
	z <= 0;
	end
	SA :
	begin	
	z <= 1;
	end
	SB :
	begin
	z <= 1;
	end
	SAB :
	begin	
	z <= 0;
	end
endcase
end
// State change logic:
always @(a or b or cur_state) begin
case(cur_state)
	IDLE :
	begin
	if(a) next_stateend
endmodule
