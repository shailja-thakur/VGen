// This is a finite state machine that recognizes the sequence 101 on the input signal x. 
module adv_fsm(
input clk,
input reset,
input x,
output z ); 
reg [1:0] present_state, next_state;
parameter IDLE=0, S1=1, S10=2, S101=3;
// output signal z is asserted to 1 when present_state is S101 
// present_state is reset to IDLE when rset is high
// otherwise it is assigned next state
// if present_state is IDLE, next_state is assigned S1 if x is 1, otherwise next_state stays at IDLE
// if present_state is S1, next_state is assigned S10 if x is 0, otherwise next_state stays at IDLE 
// if present_state is S10, next_state is assigned S101 if x is 1, otherwise next_state stays at IDLE 
// if present_state is S101, next_state is assigned IDLE


always begin
	// This FSM only latches it status of the input signal x 
	// into present_state. The downstream logic can pick or not pick up this PWM signal
	if ( x ) present_state = present_state << 1;
else present_state = present_state >> 1;

	// present_state only changes if clk is high, reset low, and x is low 
	if ( clk && reset && trigger ) next_state = next_state << 1; 

end


always head 
	clk = clk;
	if ( reset ) reset = reset;
	x = x;
end

always tail 
	if ( present_state == IDLE ) 
		z = IDLE; 
	else if ( present_state == S1 && x ) 
		z = trigger;
#endifendmodule
