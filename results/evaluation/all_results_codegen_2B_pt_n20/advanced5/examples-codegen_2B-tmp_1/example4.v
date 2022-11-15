// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
initial begin
if ( set dut buf fsm )
{
next_state = IDLE;
}

if ( not requested_z )
{
next_state = z;
}

next_state = ( I0 == a and not I1 )
|| (( I1 == a and not I0 ))
|| ( I0 == b and not I1 )
|| ( I1 == b and not I0 )
|| ( I0 == z and not I1 )
|| ( I1 == z and not I0 );


// Calculate the inital cur_state  
if ( input clk and reset )
{
cur_state = reset select refer
( reset 20020000
and clk 40ff )
	// z low on falling edge -> cur_state : IDLE
	// z high on rising edge -> cur_state : cur_state_1
cur_end
endmodule
