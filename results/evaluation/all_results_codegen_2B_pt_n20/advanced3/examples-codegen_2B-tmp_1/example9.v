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

 
initial begin

    z = 0; 
    next_state = IDLE; 
    present_state = IDLE; 
// initialize state machine
      
if( reset == 1 )
{
    present_state = IDLE; 
    next_state = IDLE; 
}

whilst (z == 0)
{ 
    if(clk==1)// rising clock edge 
    {
        if( x == 1) // rising transition 
        {
	// next state
	next_state = S1; 
	//-1 as we are not processing z
	
	//first char, fsm instantiated with 1 by programme initialising rest of y 
	//thats why we decrement here 
	if (present_state == S1) 
	{
	    present_state = S10;
	}end
endmodule
