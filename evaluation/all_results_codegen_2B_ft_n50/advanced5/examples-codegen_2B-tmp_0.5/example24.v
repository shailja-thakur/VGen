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
// if input a and b are both low, state changes to IDLE. 
// if input a is high and b is low, state changes to SA. 
always @(posedge clk or posedge reset)
begin
if (reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// Combinational logic:
assign z = (cur_state == SAB);
always @*
begin
case(cur_state)
IDLE: begin
case(b)
1'b0: next_state = IDLE;
1'b1: next_state = SA;
default: next_state = IDLE;
endcase
end
SA: begin
case(a)
1'b0: next_state = IDLE;
1'b1: next_state = SAB;
default: next_stateend
endmodule
