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



always @ ( present_state or next_state) 
begin
case(present_state)
 IDLE : begin
next_state <= IDLE ;
z <= 1'b0 ;
case(x)
 1'b1 : next_state <= IDLE;
 1'b0 : next_state <= S1;
 default : begin next_state <= IDLE; z <= 1'b;end
 endcase
.eof => (pres_instr[3]) ? next_state <= (IDLE) : z <= 1'b0;
 .pres_done <= 1'b1 ;
end
 
S1 : begin
next_state <= S10 ;
z <= 1'b0;
case(x)
 1'b1 : next_state <= S10;
 1'b0 : next_state <= IDLE;
 default : begin next_stateend
end
endmodule
