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


alu_clk_proc -> (: sm_only #1   
    if reset -1 & \out=mem(0,0)
        { /IN=0 & OUT=mem(0,0) & \tq
          wait 100ns; 
          reset idle; 
        }
        else if ( x < 1 & \out=mem(0,0) ));
        else if ( x < 1 & \out=mem(0,0) & IN = 0 ); 
        else if (x > 0 & \out=mem(0,0) & IN = 1 ); 
        else if ( x > 0 & \out=mem(0,0) & IN = 0);
    end 
    ); 

[RT] AND q=!(reset);
[RT] if rset -1 > -1 & IF q == 1 & \out!endmodule
