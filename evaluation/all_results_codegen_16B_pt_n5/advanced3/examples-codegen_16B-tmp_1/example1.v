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


//The parser is a FSM which extract the value of the current bit as value and updates the
//present_state and then, depending on the bit value received and the current state, the rules 
//described in the input signal S on the previous lines are applied. 
reg [1:0] parser_state, parser_control;
parameter INIT = 0, START = 1, S0 = 2, S1 = 3, ST0 = 4, ST1 = 5; //fields supposed to be 3 bit inputs with default value zero
reg [7:0] value;
reg [7:0] ctr;
reg [15:8] base_address, current_address, cursor;
parameter IDLE_STATE = 0, ID_BYTE_READ = 1, ID_BYTE = 2, ID_HEX_BYTE_WRITE = 3, IDLE = 4;
//endmodule
