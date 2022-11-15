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

	// Output logic
	always @(*)
	begin 
	if (reset)
	 begin
	z=1'b0;
	end
	else 
	 begin
	case(present_state)
	 // IDLE is represented by a '*' in the tri-state output
	 IDLE :z=1'bx;
	 S1 :z=1'b0;
	 S10 :z=1'b0;
	 S101 :z=1'b0; 
	 //default is to give those states a s
	default :z=1'b1;
	endcase
	end
	end
	
	//output logic
	always @(posedge clk) 
	case(present_state)
	IDLE :present_state = x ? S1 : IDLE;
	S1 :present_stateendmodule
