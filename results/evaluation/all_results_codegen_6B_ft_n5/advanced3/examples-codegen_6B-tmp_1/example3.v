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


always @(posedge clk or posedge reset) // set the next state for state 101 
if(next_state != 'd3) // the state for state 101 is not 'd3
begin 
case(next_state) // next state for state 101
2'b11: next_state = 'd3;
2'b01: next_state = 'd2;
endcase
end
else 
begin 
case(next_state) // next state for next state in case of 2'b11
2'b11: next_state = 'd1;
2'b01: next_state = 'd0;
endcase
end
// next state for state 1 
// oputput logic 
case(present_state) // case stes for output logic 
2'b11: z = 1;
2'b01: z =endmodule
