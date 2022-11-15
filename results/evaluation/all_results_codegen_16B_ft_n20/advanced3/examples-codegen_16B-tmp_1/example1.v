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

 


// FSMD state list
always @(posedge clk or posedge reset ) 
 begin 
if(reset==1)
	present_state <= IDLE;
else
	present_state <= next_state;
 end 


 when(x==1) 
begin 
 next_state = S1;
 end 
 
 when( ~x) 
begin 
 next_state = IDLE;
 end 


//condition checking 
 always @(present_state) 
 begin 
case(present_state) 
	IDLE : 
	begin 
 
	end 

 
	S1 : 
	begin 
 
	 end
 
	S10 : 
	begin 
 
	 end 

	S101 : 
	begin 
 
	 end 

	 
end
endmodule
