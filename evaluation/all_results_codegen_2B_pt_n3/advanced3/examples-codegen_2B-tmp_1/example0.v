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


// Reactive Circuit Implementation: 
//  Inputs: Clock, Reset, Input, Output
//  Output: 0 or 1

always @(posedge clk, negedge rst ) 
begin
  if (reset == 1)
    z = 1;
  else
    z = 0;
    
  #ifdef REG1_SPI 
  if (x == 1)
    present_state = S11; 
  else
    present_state = IDLE;
  #else
    present_state = present_state + 1; 
  #endif // REG1_SPI
  
  next_state = present_state;

end
march dofile Source/reg-march.txt
#ifdef REG2_SPI
	REG1     REG3
S1       simd8, rvdd
S10       endmodule
