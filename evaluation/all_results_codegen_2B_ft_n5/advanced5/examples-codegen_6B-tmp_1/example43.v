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
// if at some point, one of the inputs is deasserted, 
// the state changes to IDLE. 
// State update logic:
// Slide the state chain of the D-FFs left when a is asserted. 
// After a period of f_sel (10 ns), go to state SA. 
// After another period of f_sel, go to state SB. 
// For state SAB:
// After a period of f_sel, go to state SAB. 
// State Memreg (Mem-Based) abroled D-FFs:
// q
// ~q
assign z = 0;
always @(posedge clk or posedge reset) begin 
if(reset) 
cur_state <= IDLE;
else 
cur_state <= next_state;
end
always @ (cur_state) 
begin 
case(end
endmodule
