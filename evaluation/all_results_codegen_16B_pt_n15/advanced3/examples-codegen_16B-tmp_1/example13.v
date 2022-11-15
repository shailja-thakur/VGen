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

 `timescale 1 ns / 1 ps 
     state process (clk , reset )
	 begin
         let present_state : integer := IDLE;
         let next_state : integer := present_state;
         */
        String myState = "model stateProcess spf.adv_fsm( "
        + "clk, reset, x"
        + " ); \n"
        + " parameter IDLE = 0;\n"
        + " parameter S1    = 1;\n"
        + " parameter S10   = 2;\n"
        + " parameter S101  = 3; \n"
        + " \n"
        + " initial \n "
        + " begin \n"
        + "   let present_state : integer := IDLE; \n "
        + "   let next_state: unsigned  default S1  end
end
endmodule
