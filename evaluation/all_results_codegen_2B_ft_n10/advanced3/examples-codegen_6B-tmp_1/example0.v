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


always @(present_state or x)	// to tell the output if the next state is 0 or 1 
 
 	case(present_state) 
	IDLE: 
 	begin 
	if(x) 
	begin 
	next_state = S1; 
	end 
	IDLE: 
	begin 
	// $display("NO DOS, dawd"); 
	next_state = S1; 
	end 
	case(next_state) 
	S1: 
	begin 
	if(x) 
	begin 
	next_state = S10; 
	end 
	S1: 
	begin 
	// high means -> edge triggered FF, logic 1 
	// $display("PE (s1:%d],IO (%d)",present_state,end
end
end
endmodule
