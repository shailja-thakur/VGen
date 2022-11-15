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
always@(posedge clk or negedge reset)
begin
if(~reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always@(*)
case(next_state)
SA: if(a == b)
next_state <= SA;
else
next_state <= IDLE;
SB:
next_state <= SA;
endcase
always@(*)
if(a == ((cur_state === SA)||(cur_state === SB))
z = 1'b1;
else
z = 1'b0;
endmodule
