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
assign z = (cur_state == SA && a && b);
always @(posedge clk) begin
if(reset==1'b0) 
cur_state<=IDLE;
else 
cur_state <= next_state;
end 
always @(*) begin
case(cur_state)
IDLE: begin
next_state = (a)? SA:IDLE;
end
SA: begin
next_state = (b)? SB:SA;
end
SB: begin
next_state = SAB;
end
SAB: begin
next_state = IDLE;
end
default: 
next_state=IDLE;
endcase
end 
always @(cur_state) begin
case(cur_state)
IDLE:begin
z=1'b0;
end
SA:begin
z=1'b0end
endmodule
