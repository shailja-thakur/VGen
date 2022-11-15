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
// If a or b is asserted, the state changes to SA or SB as determined by the polarity of the inputs.
always @(posedge clk or posedge reset) begin
if (reset) 
cur_state <= IDLE; 
else 
cur_state <= next_state;
end
// State machine to control z. 
always @(*) begin
case(cur_state)
IDLE: begin
z = 1'b0;
if (a==1'b1 && b==1'b1) 
next_state = SAB;
else if (a==1'b1 || b==1'b1)
next_state = SA;
else 
next_state = IDLE;
end
SA: begin
z = 1'b0;
if (a==1'b1 && b==1'b1) 
next_end
end
endmodule
