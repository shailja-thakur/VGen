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
always @(posedge clk)
begin 
if (reset)
cur_state <= IDLE;
else
cur_state <= next_state;
if (a == b)
next_state <= SA;
else
next_state <= IDLE;
end 
// Output z based on the current state. On each clock edge the state changes based on the enable input.
always @(*)
begin
case (cur_state)
SA: begin 
assign z = b;
end
IDLE: begin
assign z = 1'b1; 
end
default: begin
assign z = 1'b0; 
end
endcase
end 
endmodule
