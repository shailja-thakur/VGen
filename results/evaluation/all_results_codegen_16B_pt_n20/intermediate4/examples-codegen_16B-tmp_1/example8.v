// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
//
always @(clk) begin
if reset = 1'b0 {
// Present the reset phase and state of the two joysticks
present_state = reset;
next_state = reset;
} else if clk > 45 ns {
} else {
// H switch for the insertion of a joystick. Sample for four bytes from the address bus and update the state machine according to the status
case ( present_state ) {
writel(0, ( char* ) "Joystick 0");
sc_stop();
present_state = in;
next_state = 0;
}
case ( present_state + 1 ) {
writel(1, ( char* ) "Joystick 0");
sc_stop();
future_state = in;
present_state = 0;
}
}
case ( present_state + 2 ) {
if ( in ) {
}
switch (end
endmodule
