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
// if input a is high only, state changes to SA.
always @(posedge clk) 
begin
if(reset==1'b1)
cur_state <= IDLE;
else
cur_state <= next_state;
end
// Edge rate logic:a_rising_edge, a_falling_edge, b_rising_edge, and b_falling_edge
// are assign statements.
// Cur_state is assign statements.
// The procedural programming here is synthesizable:
// There are cases where synthesis process will fail,
// A simulation will fail too.
// 1. a can only go HIGH to create a nest state SA in the next block.
// 2. Jet cannot see that a, even though input a is high in the next block, this signal still needs to be routed thru next block through an always do statement.
// The synthesis process may create warnings in this cornerendmodule
