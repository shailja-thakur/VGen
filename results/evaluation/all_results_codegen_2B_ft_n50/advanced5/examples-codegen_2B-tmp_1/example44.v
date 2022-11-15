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
// if only input b is high, state changes to SB. 
// else if only input a is high, state changes to SA. 
always @(posedge clk or negedge reset) begin
if(!reset) cur_state <= IDLE;
else cur_state <= next_state;
end
// other combinatorial logic come later.
// Combinational Logic below:
always @(*) begin
case(cur_state)
IDLE: next_state= a?SA:b?SB:1'b0;
(* parallel_case *) case(1'b1):
SA: next_state=SA;
sbAB: begin
case(1'b1)
a?(b):(z)=1;
endcase
end
sbBC: begin
case(1'b1)
b?(a):(z)=1;
endcaseendmodule
