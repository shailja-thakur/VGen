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


// macros and conrtrols
always(clk or reset)
 begin
	present_state <= IDLE;
	next_state <= IDLE;
	if (x!=0) then
		next_state <=       S1 // first bit of x is 1, so go to S1
	 	 
	 else if (x!=1) then
		next_state <= next_state << 1; // if x is 0, shift it by one bit
		
	else
		next_state <= next_state << 10; // if x is 1, shift it by ten bits
		
	present_state <= next_state;

end

// this function finds the kth bit from x after k bits are subtracted from it
// bit is calculated from MS char basis
// use no of subtractions in macros for better structuring of inputs/outputs
int kendmodule
