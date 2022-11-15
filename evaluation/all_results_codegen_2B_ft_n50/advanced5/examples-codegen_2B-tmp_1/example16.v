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
// if input b is high and input a is NOT high, SINGLE if O is low; ON every other clock edge SINGLE goes OFF and SINGLE gets stable; STATE comes SINGLE an else becomes STATE itself.
// when in STATE SINGLE, permanent_one stays low unless else becomes true(SA) while state remains SINGLE so state remains SINGLE.
// when in IDLE and b is high and a is high, a and b stay high for time MIN_ON after clock edge the second falling edge starts, then reset 1ns after; z is asserted
// o otherwise. Note: remaining bits of state are always kept, even in IDLE state.
always @ (posedge clk or posedge reset)
case (cur_state)
IDLE: begin
if (reset)
 next_state = SA;
else
next_state = IDLE;
end
SA: beginend
endmodule
