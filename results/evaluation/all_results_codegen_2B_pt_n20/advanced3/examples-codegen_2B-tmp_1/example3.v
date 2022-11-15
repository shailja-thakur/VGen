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


assign present_state = idle;
reg [8:0] z0, z1, z2, z3, z4, z5, z6, z7;
reg idx = 8;
always @ (posedge posedge clk & posedge reset )
begin 
   if (reset) next_state = idle;
   else
   begin 
       if (x == (z & 0b00000111))
            {
                    next_state = present_state exists S101 ? current_pli_state    : nosymp ; // current pli state is 1 = current pli, 0 = previous pli, transition flag 
                    z = z | 1;
            }
       else
            {
                    next_state = idle;
                    z = z & 0b11111111;  // z contains 0 which signals start of reset stream
            end
end
endmodule
