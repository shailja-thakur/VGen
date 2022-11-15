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
// else if (a and b are both low, the State remains the same.
// If in state SAB and in = 1, then an output is asserted.
// Set z if the state is SAB; Set an output z.
// If a is high, then the state transition is SB -> SAB.
// If b is high, then the state transition is a -> SAB

always @(posedge clk or cur_state or next_state or a or b)
begin
case(cur_state)
IDLE : begin
z <= 0; // Output is de-asserted
if (a==1 && b==1) next_state = SA;
else if (a==1 && b==0) next_state = SI;
else if (a==0 && b==1) next_state = SI;
else next_state = IDLE;
end
SI : beginend
end
endmodule
