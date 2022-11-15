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


always @( posedge clk or posedge reset )
begin
	if(reset)	// if reset is high, present_state is set to IDLE
	begin
	present_state <= IDLE;	
	end
	else
	begin
	case( present_state )
	IDLE :	// if present state is IDLE, check if xinput is high
	if( x )
	begin
	next_state <= S1;	// if xinput is 1, go to S1
	end
	else	// if xinput is 0, stay at IDLE
	next_state <= IDLE;
	S1 : 	// if present state is S1, check if xinput is low
	// Note that this state is same as S10, the next state is assigned to S1 if x input is 0
	if( x )
	begin
end
end
end
endmodule
