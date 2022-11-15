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


 // State machine structure instantiation
 // an eState one of {IDLE, S1, S10, S101}
fsm eNic(); 
 // an sState is a choice
// an {cState} is a difficulty level
enum {S1, S10, S101};
typedef struct // cState a choice
{
choice i;
state e;
} cState;
// we choose state S1
cState choice1 = {S1, S1};
// we choose state S101
cState choice2 = {S101, S101};
// now the whole variable eNic
cState p, q, choice1p, choice2p, memchoice;
// the original FSM macro instantiation
// FSM is the function
repeat forever
divider -> 
    memchoice = {choice1, choice2};
    eNic <- memchoice.endmodule
