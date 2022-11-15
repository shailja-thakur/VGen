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
// if input a or b are both low, state changes to SA.
// if only one of them is high, the state remains unchanged.
always @(posedge clk or negedge reset) begin
if(!reset)
cur_state <= IDLE;
else begin
cur_state <= next_state;
end
end
// Edge triggered sequential logic:
always @(*) begin
if(a == 1'b1 && b == 1'b0)
next_state <= SA;
else if(a == 1'b0 && b == 1'b0)
next_state <= IDLE;
else
next_state <= SAB;
end
// Output z:
always @(posedge clk or negedge reset) begin
if(!reset)
z <= 1'b0;
else begin
case(cur_state)
IDLE: z <=end
end
endmodule
