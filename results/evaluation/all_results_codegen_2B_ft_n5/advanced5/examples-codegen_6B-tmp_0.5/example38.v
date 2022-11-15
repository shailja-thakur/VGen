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
// if a or b is asserted high, state changes to SB or SA.
always @(*) begin
cur_state = next_state;
case(cur_state)
IDLE: begin
next_state = a ? SA : IDLE;
end
SA: begin
next_state = b ? SB : IDLE;
end
SB: begin
next_state = a ? SA : SB;
end
SAB: begin
next_state = a ? SA : SAB;
end
default: next_state = IDLE;
endcase
end
// State machine output logic:
always @(*) begin
case(cur_state)
IDLE: z = 0;
SA: z = 0;
SB: z = 0;
SAB: z = 1;
endcase
endmodule
