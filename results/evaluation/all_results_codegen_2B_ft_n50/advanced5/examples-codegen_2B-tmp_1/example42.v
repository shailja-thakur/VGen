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
always@(posedge clk, posedge reset)
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
// vertical_nand: create a 2 input NAND.
// Input a and b on each clock cycle. Assert b at the end.
// cur_state is SA, i.e. a is low. Input a on the next clock cycle will be negated.
// Input b on each clock cycle is high and assribted to cur_state on each clock cycle
// is abro since it has been asserted high when cur_state was SA.
// Notice: Invoking "always" in combinational block ensures this is run only once.
// The standard combinational logic has a time delay of 0.4 clock cycles which is 
// not usually suitable for the activity analysis simulation.
vertical_nand vertical_nand_a_endmodule
