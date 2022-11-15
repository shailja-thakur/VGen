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
// if input a is high, input b is ignored and cur_state becomes SA;
// if input b is high, input a is ignored and cur_state becomes SB.
always@(posedge clk or negedge reset)
if(!reset) 
	cur_state <= SAB;
else 
	cur_state <=next_state;
always@(cur_state or a or b)
begin : LET_RST_DUT
if(!reset) begin
	next_state <= SA;
	z <= 0;
end
if((cur_state == SA) && (!a) && b) begin
	z <= 1;
	next_state <= SAB; 
end else if((cur_state == SB) && b && (!a) ) begin
	z <= 1;
	next_state <= STATIC;
end else begin
	next_end
end
endmodule
