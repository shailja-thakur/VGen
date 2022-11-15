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
// if only a is high, SA is entered.
// if only b is high, SB is entered.
always@(posedge clk)
	if(reset)
	cur_state <= IDLE;
	else
	cur_state <= next_state;
always@(*)
begin
case(cur_state)
IDLE : if(a & b) begin 
next_state <= SA; end
else if(a) begin
next_state <= SB; end
else if(b) begin
next_state <= SAB; end
endcase
end
// busz generation: if qutntest is 00 1010 or 00 1010 1100, then busz is high.
reg [2:0] qutntest;
always@(*)
begin
case(cur_state)
SA:begin
qutntest = 3'b011;
ifend
endmodule
