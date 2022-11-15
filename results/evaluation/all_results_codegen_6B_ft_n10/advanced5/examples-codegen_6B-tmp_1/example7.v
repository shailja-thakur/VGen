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
// If only A is high, then the output is deasserted for that
// clock cycle and then asserted when A is high. Thus, GFF is
// actually a DFF and register. If B is high, then output is
// deasserted or DFF and then asserted when B is high.
// State transitions invert, so invert back for ZMM (zxx). 
always @(*) begin
next_state = cur_state;
case(cur_state)
IDLE: if (a==1 && b==1) next_state = SA; else if (a==1 && b==0) next_state = IDLE; else next_state = IDLE;
SA: if (a==0 && b==1) next_state = SB; else if (a==1 && b==1) next_state = SA; else next_state = IDLE;
SB:end
endmodule
