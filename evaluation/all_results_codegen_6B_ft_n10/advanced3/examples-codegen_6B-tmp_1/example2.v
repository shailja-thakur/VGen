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

 
// Instantiation of the register variables containing the states
// Definition of the states
parameter A= 2'b00;
parameter B= 2'b01;
parameter C= 2'b10;
parameter D= 2'b11;

always @(posedge clk) // always blocks excevute always
	begin: state_table
	case (present_state)
	A: if (x) next_state = B;
	else next_state = A;
	B: if (x) next_state = C;
	else next_state = A;
	C: if (x) next_state = C;
	else next_state = A;
	D: if (x) next_state = B;
	else next_state = A;
	default: next_state = A;
	endcase
	// $endmodule
