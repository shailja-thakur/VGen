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
// if input a and b are both low, state changes to IDLE state.
// if only input a is high, state changes to SA.
// if only input b is high, state changes to SB.
always@(posedge clk,posedge reset)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always@(*)
begin
case(cur_state)
IDLE:
begin
next_state <= (a&b) ? SA:IDLE;
end
SA:
begin
next_state <= (a&b) ? SA:SB;
z = 1'b0;
end
SB:
begin
next_state <= (a&b) ? SA:IDLE;
z = 1'b0;
end
endcase
end
endmodule