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
// If any one of them is high, state changes to SB or IDLE.
always @(posedge clk or posedge reset) begin
if (reset)
cur_state <= IDLE; 
else 
cur_state <= next_state;
end
// State machine to generate high Z output
always @(*) begin
case(cur_state)
IDLE: begin
z = 1'b0;
if (a && b) 
next_state = SAB;
else if (a || b)
next_state = SB;
else
next_state = IDLE;
end
SAB: begin
z = 1'b1;
next_state = SAB;
end
SB: begin
z = 1'b0;
next_state = SB;
end
default: next_state = IDLE;
endcase
end
endmodule
