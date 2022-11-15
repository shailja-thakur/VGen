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

 logic begin // logic ties z to x after the FSM is started up
 	   present_state <= IDLE;
	 send next_state to next_state;
	 begin
		 TXE <= '0' and clk;
		 if RXF = '1' AND present_state<> IDLE => and x
		 present_state <= x 'wrkld';
		 next_state <= x 'wrkld' AND IDLE;
		 if present_state = IDLE = next_state then next_state <= S1;
		 rep
			 next_state <= x != x 'wrkld' AND present_state <> IDLE;
		end ;
		 RST <= '1' and CLK <= '1' when rs <> '0' AND x = '1'
		 and 'wrkld' = 0;
		 S1 <= '1' and CLendmodule
