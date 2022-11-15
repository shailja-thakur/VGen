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




begin
	// declare vars and clock
	unsigned int i, j;
	always @(posedge clk or negedge reset)
	 begin
	  	idle_logic 0 <= i <=97 && i <= 122;
    		idle_logic j <= 32 && j <= 126;	
		// z <= 1 when the even bit 7 is set
		if(i<=110&&i>=98&&j<=32) {z <= '1';}
		else { z <= '0';}	
	 end

	// assign inputs
	assign present_state = IDLE;
	assign next_state = IDLE;
	assign x = '0';
	// none-unlikely conditions	
	if (i == 97) {next_state = S10; x = '1';}
	for(i=97end
endmodule
