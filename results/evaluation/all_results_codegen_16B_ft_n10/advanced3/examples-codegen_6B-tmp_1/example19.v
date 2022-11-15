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


end adv_fsm;
end architecture;

file declaration_adv_fsm: adv_fsm_student: declaration_adv_fsm_student; //@@463
end file declaration_adv_fsm;

file declaration_tb1: tb_student: declaration_tb1_student; //@@463
end file declaration_tb1;

file declaration_tb2: tb_student: declaration_tb2_student; //@@463
end file declaration_tb2;

file declaration_tb3: tb_student: declaration_tb3_student; //@@463
end file declaration_tb3;

file declaration_fsm: fsm: declaraton_fsm_student; //@@463
end file declaration_fsm;

file  declaraton_adv_fsm:adv_fsmendmodule
